/*
 * Object.mqh  
 */
#include <StdLibErr.mqh>

/*
 * Class CObject
 *   Base class for storing elements
 */ 
class CObject {
private:
    // previous item of list
    CObject *m_prev;
    // next item of list     
    CObject *m_next;               
public:
    CObject(): m_prev(NULL),m_next(NULL) {}
    ~CObject() {}
   //--- methods to access protected data
   CObject *Prev() const { return(m_prev); }
   
    void Prev(CObject *node) { m_prev=node; }
    CObject *Next() const { return(m_next); }
    void Next(CObject *node) { m_next=node; }
   //--- methods for working with files
   virtual bool Save(const int file_handle) { return(true);   }
   virtual bool Load(const int file_handle) { return(true);   }
   //--- method of identifying the object
   virtual int Type() const { return(0); }
   //--- method of comparing the objects
   virtual int Compare(const CObject *node, const int mode = 0) const { return(0); }
};

