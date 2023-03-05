





<template>
    <div>
        

     <div class="container-fluid p-0 m-0" style="background:#D5DBDB;">
    <div class="row p-0 m-0  " >
   

   

        <div class="col-xs-12 col-sm-12 col-md-8 col-lg-8 col-xl-8 col-xxl-8 m-0 p-0 "   >
                 
                 <component v-bind:is="currentComponent"></component>
             
        </div>
        <!--  -->
        <div class="col-sm-12 col-sm-12 col-md-4 col-lg-4 col-xl-4 col-xxl-4 m-0 p-0 "  >
                        
            <div class="container mt-3">

             <div style="background:white;border-radius:20px" class="p-3">
                <ul class="navbar-nav mr-auto">
                                 <center><span>Settings</span> </center>
                    <li class="nav-item active">
                      <button @click.prevent="getcomp('term')" class="dropdown-item" >Terms  </button>
                      <button @click.prevent="getcomp('grade')" class="dropdown-item" >Grades   </button>
                      <button @click.prevent="getcomp('subject')" class="dropdown-item" > Subjects  </button>
                      <button @click.prevent="getcomp('addquestions')" class="dropdown-item" >Question  </button>
                    </li>             
                </ul>                           
             </div>

            </div>
        </div>      


    </div>
    </div>
</div>
</template>


<script>
import term from './Term.vue'
import grade from './Grade.vue'
import subject from './Subject.vue'
import addquestions from './Question.vue'


export default {
    components:{
    grade,subject,addquestions,term,
    },
        data(){
            return{
                currentComponent:'grade',
                

            }  
      },
    
     methods:{
          getcomp(val){
            this.currentComponent = val;
          }
        
      },
      
      created(){
      
       },
      
          
 
}
</script>

