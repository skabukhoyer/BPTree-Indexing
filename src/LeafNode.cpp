#include "RecordPtr.hpp"
#include "LeafNode.hpp"
#include "BPTree.hpp" //                                                   i add this
LeafNode::LeafNode(const TreePtr &tree_ptr) : TreeNode(LEAF, tree_ptr) {
    this->data_pointers.clear();
    this->next_leaf_ptr = NULL_PTR;
    if(!is_null(tree_ptr))
        this->load();
}

//returns max key within this leaf
Key LeafNode::max() {
    auto it = this->data_pointers.rbegin();
    return it->first;
}

 //my code
    void LeafNode:: left_redistribute(TreePtr tree_ptr) {
        auto sibling_node= new LeafNode(tree_ptr);
        auto it = sibling_node->data_pointers.rbegin();
        this->data_pointers.insert({it->first,it->second});
        this->size++;
        sibling_node->data_pointers.erase(it->first);
        sibling_node->size--;
        this->dump();
        sibling_node->dump();
        delete sibling_node;
        
    }
    void LeafNode:: left_merge(TreePtr tree_ptr, Key key) {
        auto sibling_node= new LeafNode(tree_ptr);
        sibling_node->next_leaf_ptr=this->next_leaf_ptr;
        for(auto it : this->data_pointers){
            sibling_node->data_pointers.insert({it.first,it.second});
            sibling_node->size++;
        }
        sibling_node->dump();
        delete sibling_node;
    }
    void LeafNode:: right_redistribute(TreePtr tree_ptr) {
        auto sibling_node= new LeafNode(tree_ptr);
        auto it = sibling_node->data_pointers.begin();
        this->data_pointers.insert({it->first,it->second});
        this->size++;
        sibling_node->data_pointers.erase(it->first);
        sibling_node->size--;
        this->dump();
        sibling_node->dump();
        delete sibling_node;
        
    }
    void LeafNode:: right_merge(TreePtr tree_ptr) {
        auto sibling_node= new LeafNode(tree_ptr);
        this->next_leaf_ptr=sibling_node->next_leaf_ptr;
        for(auto it : sibling_node->data_pointers){
            this->data_pointers.insert({it.first,it.second});
            this->size++;
        }
        this->dump();
        delete sibling_node;
    }
//my code






//inserts <key, record_ptr> to leaf. If overflow occurs, leaf is split
//split node is returned
//TODO: LeafNode::insert_key to be implemented
TreePtr LeafNode::insert_key(const Key &key, const RecordPtr &record_ptr) {
    TreePtr new_leaf = NULL_PTR; //if leaf is split, new_leaf = ptr to new split node ptr

    /**************************MY CODE********************************************/
    if(this->data_pointers.size()<FANOUT){

        this->data_pointers[key]=record_ptr;
        this->size = this->data_pointers.size();
    }
    else{
        vector<Key> vk(FANOUT+1);
        vector<RecordPtr> vr(FANOUT+1);
        
        auto split_node = new LeafNode();
        int i=0;
        this->data_pointers.insert({key,record_ptr});
        for(auto &p: this->data_pointers){
            vk[i]=p.first;
            vr[i]=p.second;
            i++;
        }
        split_node->next_leaf_ptr=this->next_leaf_ptr;
        this->next_leaf_ptr = split_node->tree_ptr;
        

        this->data_pointers.clear();
        this->size=0;

        for(int i=0;i<MIN_OCCUPANCY;i++){
            this->data_pointers[vk[i]]=vr[i];
            this->size++;
        }

        for(int i=MIN_OCCUPANCY;i<vk.size();i++){
            split_node->data_pointers.insert({vk[i],vr[i]});
            split_node->size++;
        }

        new_leaf=split_node->tree_ptr ;

        split_node->dump();
        
    }

    /**************************MY CODE********************************************/
    // cout << "LeafNode::insert_key not implemented" << endl;
    this->dump();
    return new_leaf;
}

//key is deleted from leaf if exists
//TODO: LeafNode::delete_key to be implemented
void LeafNode::delete_key(const Key &key) {
    /**************************MY CODE********************************************/
    if(this->data_pointers.find(key)!= this->data_pointers.end()){
        this->data_pointers.erase(key);
        this->size--;
        
    }
    else{
        cout<<"LeafNode:: Key not found"<<endl;
    }

    /**************************MY CODE********************************************/
    // cout << "LeafNode::delete_key not implemented" << endl;
    this->dump();
}

//runs range query on leaf
void LeafNode::range(ostream &os, const Key &min_key, const Key &max_key) const {
    BLOCK_ACCESSES++;
    for(const auto& data_pointer : this->data_pointers){
        if(data_pointer.first >= min_key && data_pointer.first <= max_key)
            data_pointer.second.write_data(os);
        if(data_pointer.first > max_key)
            return;
    }
    if(!is_null(this->next_leaf_ptr)){
        auto next_leaf_node = new LeafNode(this->next_leaf_ptr);
        next_leaf_node->range(os, min_key, max_key);
        delete next_leaf_node;
    }
}

//exports node - used for grading
void LeafNode::export_node(ostream &os) {
    TreeNode::export_node(os);
    for(const auto& data_pointer : this->data_pointers){
        os << data_pointer.first << " ";
    }
    os << endl;
}

//writes leaf as a mermaid chart
void LeafNode::chart(ostream &os) {
    string chart_node = this->tree_ptr + "[" + this->tree_ptr + BREAK;
    chart_node += "size: " + to_string(this->size) + BREAK;
    for(const auto& data_pointer: this->data_pointers) {
        chart_node += to_string(data_pointer.first) + " ";
    }
    chart_node += "]";
    os << chart_node << endl;
}

ostream& LeafNode::write(ostream &os) const {
    TreeNode::write(os);
    for(const auto & data_pointer : this->data_pointers){
        if(&os == &cout)
            os << "\n" << data_pointer.first << ": ";
        else
            os << "\n" << data_pointer.first << " ";
        os << data_pointer.second;
    }
    os << endl;
    os << this->next_leaf_ptr << endl;
    return os;
}

istream& LeafNode::read(istream& is){
    TreeNode::read(is);
    this->data_pointers.clear();
    for(int i = 0; i < this->size; i++){
        Key key = DELETE_MARKER;
        RecordPtr record_ptr;
        if(&is == &cin)
            cout << "K: ";
        is >> key;
        if(&is == &cin)
            cout << "P: ";
        is >> record_ptr;
        this->data_pointers.insert(pair<Key,RecordPtr>(key, record_ptr));
    }
    is >> this->next_leaf_ptr;
    return is;
}