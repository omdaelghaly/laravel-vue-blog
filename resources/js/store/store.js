


import Vue from "vue"
import Vuex from "vuex"

Vue.use(Vuex);
  
const store = new Vuex.Store({
       state:{
           langx:'',
           user:'',
           posts:[],
           edit:'',
           grades:[],
           subjects:[],
           terms:[],
           q:'',
           examq:'',
                     
         },
       mutations: {
        setlang(state, lang) {
            state.langx = lang;
        },
        setauth(state, user) {
            state.user = user;
        },
         setvemail(state, num) {
           state.user.verifyemail = num ;
        }, 
         setposts(state, posts) {
           state.posts = posts ;
        },
        savepost(state, post) {
           state.posts.unshift(post) ;
        },
        editpost(state, post) {
           let index = state.posts.findIndex(val=>val.id === post.id);
             state.posts[index].post= post.post ;
             state.posts[index].getimages= post.getimages ;
             state.posts[index].getfiles= post.getfiles ;
        },
        editcomment(state, comment) {
            let indexpost = state.posts.findIndex(val=>val.id === comment.post_id);
            let indexcom  = state.posts[indexpost].getcomments.findIndex(val=>val.id === comment.id);//post.id == comment.id
                state.posts[indexpost].getcomments[indexcom].comment = comment.comment ;
                state.posts[indexpost].getcomments[indexcom].getcommentimages = comment.getcommentimages ;
        },
        editreply(state, reply) {
            let indexpost = state.posts.findIndex(val=>val.id === reply.post_id);
            let indexcom  = state.posts[indexpost].getcomments.findIndex(val=>val.id === reply.comment_id);//post.id == comment.id
            let indexreply= state.posts[indexpost].getcomments[indexcom].getcommentreplys.findIndex(val=>val.id === reply.id);//post.id == comment.id
                state.posts[indexpost].getcomments[indexcom].getcommentreplys[indexreply].reply = reply.reply ;
        },
        deletepost(state, postid ) {
           let index = state.posts.findIndex(v => v.id === postid);
               state.posts.splice(index,1);
        },
        deletecomment(state, info) {
            let postid   =info.postid;
            let commentid=info.commentid;
            let index = state.posts.find(val=>val.id === postid).getcomments.findIndex(v=>v.id === commentid);
                state.posts.find(val=>val.id === postid).getcomments.splice(index,1);
        },

          makelike(state,likerow) {
             let posts = state.posts ;
             let postid=likerow.post_id;
             posts.find(val=>val.id === postid).getlikes.push(likerow);
             state.posts = posts ;
             // console.log(state.posts.find(val=>val.id === postid).getlikes);
            
        },
             makedislike(state,info){
             let postid=info.postid;
             let rowid=info.rowid;
             let index = state.posts.find(val=>val.id === postid).getlikes.findIndex(v =>v.id === rowid);
             state.posts.find(val=>val.id === postid).getlikes.splice(index,1)
             // console.log(state.posts.find(val=>val.id === postid).getlikes);
        },
           makecomlike(state,likerow) {
             let posts = state.posts ;
             let postid=likerow.post_id;
             let commentid=likerow.comment_id;
              state.posts.find(val=>val.id === postid).getcomments.find(val=>val.id === commentid).getcommentlikes.push(likerow);
            
        },
             makecomdislike(state,likerow){
              let posts = state.posts ;
             let postid=likerow.post_id;
             let commentid=likerow.comment_id;
             let likeid=likerow.id;

             let index = state.posts.find(val=>val.id === postid).getcomments.find(val=>val.id === commentid).getcommentlikes.findIndex(v => v.id === likeid);
             state.posts.find(val=>val.id === postid).getcomments.find(val=>val.id === commentid).getcommentlikes.splice(index,1)
        },
          setcomment(state,infx) {
             let postid = infx.postid;
             let commentid = infx.commentid;
             let comment = infx.comment;
                 state.posts.find(val=>val.id === postid).getcomments.unshift(comment);
        },
        setreply(state,infx) {
             let postid = infx.postid;
             let commentid = infx.commentid;
             let reply  = infx.reply ;
              state.posts.find(val=>val.id === postid).getcomments.find(val=>val.id === commentid).getcommentreplys.unshift(reply);
        },
         deletereply(state, info) {
            let postid   =info.postid;
            let commentid=info.commentid;
            let replyid=info.replyid;
            let index = state.posts.find(val=>val.id === postid).getcomments.find(val=>val.id === commentid).getcommentreplys.findIndex(v => v.id === replyid); 
              state.posts.find(val=>val.id === postid).getcomments.find(v=>v.id === commentid).getcommentreplys.splice(index,1);
        },
        setedit(state,data){
             state.edit = data ;
        },
       ///////////////////////grade /subject ////////////
       //save grade
         setgradesall(state, grades) {
           state.grades=grades ;
        },
        //save grade
         savegrade(state, grade) {
           state.grades.unshift(grade) ;
        },
         editgrade(state, grade) {
          let index = state.grades.findIndex(val=>val.id === grade.id) ;
                  state.grades[index]= grade ;
        }, 
        deletegrade(state, gradeid ) {
           let index = state.grades.findIndex(val=>val.id === gradeid);
               state.grades.splice(index,1);
        },          
//save subject
         setsubjectsall(state, subjects) {
           state.subjects=subjects ;
        },
        //save subject
         savesubject(state, subject) {
           state.subjects.unshift(subject) ;
        },
         editsubject(state, subject) {
          let index = state.subjects.findIndex(val=>val.id === subject.id) ;
                  state.subjects[index]= subject ;
        }, 
        deletesubject(state, subjectid ) {
           let index = state.subjects.findIndex(val=>val.id === subjectid);
               state.subjects.splice(index,1);
        },
/// term                  
        settermsall(state, terms) {
           state.terms=terms ;
        },
        //save term
         saveterm(state, term) {
           state.terms.unshift(term) ;
        },
         editterm(state, term) {
          let index = state.terms.findIndex(val=>val.id === term.id) ;
                  state.terms[index]= term ;
        }, 
        deleteterm(state, termid ) {
           let index = state.terms.findIndex(val=>val.id === termid);
               state.terms.splice(index,1);
        },
//questions
        setqall(state, q) {
           state.q = q;
        },

         savenewq(state, q) {
           state.q.unshift(q) ;
        },
         saveeditq(state, editq) {
          let index = state.q.findIndex(val=>val.id === editq.id) ;
                  state.q[index]= editq ;
        }, 
          deleteq(state, qid ) {
           let index = state.q.findIndex(val=>val.id === qid);
               state.q.splice(index,1);
        },
     //////exam random///
        setexamq(state, exam ) {
               state.examq = exam ;
        },  
    },
       getters:{
        getedit:function(state){
           return state.edit ;   
        },
        lang:function(state){
            return state.langx;
        },
        currentpage:function(state){
            return state.currentpage;
        },
        user:function(state){
            return state.user;
        },
        getposts:function(state){
            return state.posts;
        },
        subjects:function(state){
            return state.subjects;
        },
        grades:function(state){
            return state.grades;
        },
        terms:function(state){
            return state.terms;
        },
        q:function(state){
            return state.q;
        },
        examq:function(state){
            return state.examq;
        },        
         stream:function(state){
            return state.streams;
        }

       }

});


export default store;