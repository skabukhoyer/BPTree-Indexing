#include "InternalNode.hpp"

// creates internal node pointed to by tree_ptr or creates a new one
InternalNode::InternalNode(const TreePtr &tree_ptr) : TreeNode(INTERNAL, tree_ptr)
{
    this->keys.clear();
    this->tree_pointers.clear();
    if (!is_null(tree_ptr))
        this->load();
}

// max element from tree rooted at this node
Key InternalNode::max()
{
    Key max_key = DELETE_MARKER;
    TreeNode *last_tree_node = TreeNode::tree_node_factory(this->tree_pointers[this->size - 1]);
    max_key = last_tree_node->max();
    delete last_tree_node;
    return max_key;
}

// if internal node contains a single child, it is returned
TreePtr InternalNode::single_child_ptr()
{
    if (this->size == 1)
        return this->tree_pointers[0];
    return NULL_PTR;
}


//my code
    void InternalNode:: left_redistribute(TreePtr tree_ptr) {
        auto sibling_node= new InternalNode(tree_ptr);
        TreePtr last_tree_ptr = sibling_node->tree_pointers.back();
        sibling_node->tree_pointers.pop_back();
        sibling_node->keys.pop_back();
        sibling_node->size--;
        this->tree_pointers.insert(this->tree_pointers.begin(),last_tree_ptr);
        auto passed_node = TreeNode:: tree_node_factory(last_tree_ptr);
        this->keys.insert(this->keys.begin(),passed_node->max());
        this->size++;
        
        this->dump();
        sibling_node->dump();
        delete sibling_node;
        delete passed_node;
    }
    void InternalNode:: left_merge(TreePtr tree_ptr, Key key) {
        auto sibling_node= new InternalNode(tree_ptr);
        
        for(int i=0;i<this->size;i++){
            
            sibling_node->tree_pointers.push_back(this->tree_pointers[i]);
            sibling_node->size++;
        }
        sibling_node->keys.push_back(key);
        for(int i=0;i<this->keys.size();i++){
            sibling_node->keys.push_back(this->keys[i]);
        }

        sibling_node->dump();
        delete sibling_node;
    }
    void InternalNode:: right_redistribute(TreePtr tree_ptr) {
        auto sibling_node= new InternalNode(tree_ptr);
        TreePtr first_tree_ptr = sibling_node->tree_pointers.front();
        sibling_node->tree_pointers.erase(sibling_node->tree_pointers.begin());
        sibling_node->keys.erase(sibling_node->keys.begin());
        sibling_node->size--;
        this->tree_pointers.push_back(first_tree_ptr);
        this->size++;
        // this->keys.pop_back();
        TreePtr temp_tree_ptr = this->tree_pointers[this->size - 2];
        auto passed_node = TreeNode:: tree_node_factory(temp_tree_ptr);
        this->keys.push_back(passed_node->max());
        this->dump();
        sibling_node->dump();
        delete sibling_node;
        delete passed_node;
    }
    void InternalNode:: right_merge(TreePtr tree_ptr) {
        auto sibling_node= new InternalNode(tree_ptr);
        auto passed_node = TreeNode:: tree_node_factory(this->tree_pointers.back());
        this->keys.push_back(passed_node->max());
        for(int i=0;i<sibling_node->size-1;i++){
            this->keys.push_back(sibling_node->keys[i]);
            this->tree_pointers.push_back(sibling_node->tree_pointers[i]);
            this->size++;
        }
        this->tree_pointers.push_back(sibling_node->tree_pointers[sibling_node->size-1]);
        this->size++;
        this->dump();
        delete passed_node;
        delete sibling_node;
    }
//my code


// inserts <key, record_ptr> into subtree rooted at this node.
// returns pointer to split node if exists
// TODO: InternalNode::insert_key to be implemented
TreePtr InternalNode::insert_key(const Key &key, const RecordPtr &record_ptr)
{
    TreePtr new_tree_ptr = NULL_PTR;
    /**************************MY CODE********************************************/

    TreePtr next_tree_ptr = NULL_PTR;
    int current=-1;
    int j = 0;
    for (; j < this->keys.size(); j++)
    {
        if (key <= this->keys[j])
        {
            current = j;
            
            break;
        }
    }
    if (j == this->keys.size())
    {
        current=j;
    }
    next_tree_ptr = this->tree_pointers[current];
    if (next_tree_ptr == NULL_PTR)
    {
        cout << "NULL CHILD POINTER" << endl;
        return new_tree_ptr;
    }
    TreeNode *next_child_node = TreeNode::tree_node_factory(next_tree_ptr);
    TreePtr potential_split_node_ptr = next_child_node->insert_key(key, record_ptr);
    if (!is_null(potential_split_node_ptr))
    {

        this->keys.insert(this->keys.begin()+current,next_child_node->max());
        this->tree_pointers.insert(this->tree_pointers.begin()+current+1,potential_split_node_ptr);
        this->size++;
        
        if (this->overflows())
        {
            vector<Key> vk;
            vector<TreePtr> vp;
            for (int i = 0; i < this->size - 1; i++)
            {
                vk.push_back(this->keys[i]);
                vp.push_back(this->tree_pointers[i]);
            }
            vp.push_back(this->tree_pointers[this->size - 1]);
            auto new_internal_node = new InternalNode();
            this->size = 0;
            this->keys.clear();
            this->tree_pointers.clear();
            int i = 0;
            for (; i < MIN_OCCUPANCY-1; i++)
            {
                this->keys.push_back(vk[i]);
                this->tree_pointers.push_back(vp[i]);
                this->size++;
            }
            this->tree_pointers.push_back(vp[i]);
            this->size++;
            i++;
            for (; i < vk.size(); i++)
            {
                new_internal_node->keys.push_back(vk[i]);
                new_internal_node->tree_pointers.push_back(vp[i]);
                new_internal_node->size++;
            }
            new_internal_node->tree_pointers.push_back(vp[i]);
            new_internal_node->size++;
            new_internal_node->dump();
            new_tree_ptr = new_internal_node->tree_ptr;
        }
    }
    delete next_child_node;

    /**************************MY CODE********************************************/
    // cout << "InternalNode::insert_key not implemented" << endl;
    this->dump();
    return new_tree_ptr;
}

// deletes key from subtree rooted at this if exists
// TODO: InternalNode::delete_key to be implemented
void InternalNode::delete_key(const Key &key)
{
    TreePtr new_tree_ptr = NULL_PTR;
    /**************************MY CODE********************************************/
    TreePtr next_tree_ptr = NULL_PTR;
    int j = 0;
    int prev=-1;
    int current=-1;
    int next=-1;
    for (; j < this->keys.size(); j++)
    {
        if (key <= this->keys[j])
        {
            current=j;
            prev=j-1;
            next=j+1;
            break;
        }
    }
    if (j == this->keys.size())
    {
        current=j;
        prev=j-1;
        next=-1;
    }
    if (current==-1)
    {
        cout << "NULL CHILD POINTER" << endl;
        return ;
    }
    next_tree_ptr=this->tree_pointers[current];
    auto next_child_node = TreeNode::tree_node_factory(next_tree_ptr);
    next_child_node->delete_key(key);
    if(next_child_node->underflows() && next_child_node->node_type==LEAF){//LEAF NODE UNDERFLOW
        if(prev != -1){             //check left sibling
            auto left_sib_node = TreeNode::tree_node_factory(this->tree_pointers[prev]);
            if(left_sib_node->size > MIN_OCCUPANCY){
                //Left sibling redistribution
                next_child_node->left_redistribute(this->tree_pointers[prev]);
                left_sib_node = TreeNode::tree_node_factory(this->tree_pointers[prev]);
                this->keys[prev]=left_sib_node->max();
                
            }
            else{
                //Left sibling merge
                next_child_node->left_merge(this->tree_pointers[prev],-1);
                left_sib_node = TreeNode::tree_node_factory(this->tree_pointers[prev]);
                if(current<this->keys.size())
                    this->keys[current]=left_sib_node->max();
                this->keys.erase(this->keys.begin()+prev);
                this->tree_pointers.erase(this->tree_pointers.begin()+current);
                this->size--;
                
                next_child_node->delete_node();
                
            }
            delete left_sib_node;
        }
        else if(next != -1){            //check right sibling
            auto right_sib_node = TreeNode::tree_node_factory(this->tree_pointers[next]);
            if(right_sib_node->size > MIN_OCCUPANCY){
                //right sibling redistribution
                next_child_node->right_redistribute(this->tree_pointers[next]);
                next_child_node = TreeNode::tree_node_factory(next_tree_ptr);
                this->keys[current]=next_child_node->max();
              
                
            }
            else{
                //right sibling merge
                next_child_node->right_merge(this->tree_pointers[next]);
                next_child_node = TreeNode:: tree_node_factory(next_tree_ptr);
                if(next<this->keys.size()){
                    this->keys[current]=next_child_node->max();
                }
                this->keys.erase(this->keys.begin()+current);
                this->tree_pointers.erase(this->tree_pointers.begin()+next);
                this->size--;
                
                right_sib_node->delete_node();
               
            }
            delete right_sib_node;
        }
    }
    
    else if(next_child_node->underflows() && next_child_node->node_type==INTERNAL){//INTERNAL NODE UNDERFLOW
        if(prev != -1){    
            TreePtr left_tree_ptr= this->tree_pointers[prev];        //check left sibling
            auto left_sib_node = TreeNode::tree_node_factory(left_tree_ptr);
            if(left_sib_node->size > MIN_OCCUPANCY){
                //Left sibling redistribution
                next_child_node->left_redistribute(left_tree_ptr);
                left_sib_node = TreeNode::tree_node_factory(left_tree_ptr);
                this->keys[prev]=left_sib_node->max();
                
            }
            else{
                //Left sibling merge
                
                next_child_node->left_merge(this->tree_pointers[prev],this->keys[prev]);
                this->keys.erase(this->keys.begin()+prev);
                this->tree_pointers.erase(this->tree_pointers.begin()+current);
                
                this->size--;
                left_sib_node = TreeNode::tree_node_factory(this->tree_pointers[prev]);
                if(current<this->keys.size())
                    this->keys[current]=left_sib_node->max();
                next_child_node->delete_node();
                
            }
            delete left_sib_node;
        }
        else if(next != -1){            //check right sibling
            auto right_sib_node = TreeNode::tree_node_factory(this->tree_pointers[next]);
            if(right_sib_node->size > MIN_OCCUPANCY){
                //right sibling redistribution
                next_child_node->right_redistribute(this->tree_pointers[next]);
                next_child_node = TreeNode:: tree_node_factory(next_tree_ptr);
                this->keys[current]=next_child_node->max();
                
            }
            else{
                //right sibling merge
                next_child_node->right_merge(this->tree_pointers[next]);
                this->keys.erase(this->keys.begin()+current);
                this->tree_pointers.erase(this->tree_pointers.begin()+next);
                this->size--;
                next_child_node = TreeNode:: tree_node_factory(next_tree_ptr);
                this->keys[next]=next_child_node->max();
                right_sib_node->delete_node();
                
            }
            delete right_sib_node;
        }
    }
    if(next != -1 and this->keys[current]==key){
        this->keys[current]=next_child_node->max();
        
    }
    delete next_child_node;

    /**************************MY CODE********************************************/
    // cout << "InternalNode::delete_key not implemented" << endl;
    this->dump();
}

// runs range query on subtree rooted at this node
void InternalNode::range(ostream &os, const Key &min_key, const Key &max_key) const
{
    BLOCK_ACCESSES++;
    for (int i = 0; i < this->size - 1; i++)
    {
        if (min_key <= this->keys[i])
        {
            auto *child_node = TreeNode::tree_node_factory(this->tree_pointers[i]);
            child_node->range(os, min_key, max_key);
            delete child_node;
            return;
        }
    }
    auto *child_node = TreeNode::tree_node_factory(this->tree_pointers[this->size - 1]);
    child_node->range(os, min_key, max_key);
    delete child_node;
}

// exports node - used for grading
void InternalNode::export_node(ostream &os)
{
    TreeNode::export_node(os);
    for (int i = 0; i < this->size - 1; i++)
        os << this->keys[i] << " ";
    os << endl;
    for (int i = 0; i < this->size; i++)
    {
        auto child_node = TreeNode::tree_node_factory(this->tree_pointers[i]);
        child_node->export_node(os);
        delete child_node;
    }
}

// writes subtree rooted at this node as a mermaid chart
void InternalNode::chart(ostream &os)
{
    string chart_node = this->tree_ptr + "[" + this->tree_ptr + BREAK;
    chart_node += "size: " + to_string(this->size) + BREAK;
    chart_node += "]";
    os << chart_node << endl;

    for (int i = 0; i < this->size; i++)
    {
        auto tree_node = TreeNode::tree_node_factory(this->tree_pointers[i]);
        tree_node->chart(os);
        delete tree_node;
        string link = this->tree_ptr + "-->|";

        if (i == 0)
            link += "x <= " + to_string(this->keys[i]);
        else if (i == this->size - 1)
        {
            link += to_string(this->keys[i - 1]) + " < x";
        }
        else
        {
            link += to_string(this->keys[i - 1]) + " < x <= " + to_string(this->keys[i]);
        }
        link += "|" + this->tree_pointers[i];
        os << link << endl;
    }
}

ostream &InternalNode::write(ostream &os) const
{
    TreeNode::write(os);
    for (int i = 0; i < this->size - 1; i++)
    {
        if (&os == &cout)
            os << "\nP" << i + 1 << ": ";
        os << this->tree_pointers[i] << " ";
        if (&os == &cout)
            os << "\nK" << i + 1 << ": ";
        os << this->keys[i] << " ";
    }
    if (&os == &cout)
        os << "\nP" << this->size << ": ";
    os << this->tree_pointers[this->size - 1];
    return os;
}

istream &InternalNode::read(istream &is)
{
    TreeNode::read(is);
    this->keys.assign(this->size - 1, DELETE_MARKER);
    this->tree_pointers.assign(this->size, NULL_PTR);
    for (int i = 0; i < this->size - 1; i++)
    {
        if (&is == &cin)
            cout << "P" << i + 1 << ": ";
        is >> this->tree_pointers[i];
        if (&is == &cin)
            cout << "K" << i + 1 << ": ";
        is >> this->keys[i];
    }
    if (&is == &cin)
        cout << "P" << this->size;
    is >> this->tree_pointers[this->size - 1];
    return is;
}
