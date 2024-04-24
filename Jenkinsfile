pipeline {

agent any

   tools {
        maven 'maven'
         }
  
  stages {
  
      stage ("CheckoutCode") {
	  
	      steps {
		  
		     git 'https://github.com/anilbichkule/project-1.git'
		  
		  }
	  }
	  
	  stage ("GenerateArtifact") {
	  
	      steps {
		    
			sh " mvn clean package"
		  
		  }
	  
	  }
	  
	  stage ("CreatingDockerImage") {
	  
	      steps {
		  
		    sh " docker build -t maven-web-app:${BUILD_NUMBER} . "
		    sh " docker tag maven-web-app:${BUILD_NUMBER} anilbichkule/maven-web-app:${BUILD_NUMBER} "
		    sh " docker login -u anilbichkule -p Anil@0403 "
		    sh " docker push anilbichkule/maven-web-app:${BUILD_NUMBER} " 
		  
		  }
	  
	  }
	  
	  stage ("CreatingDeployment") {
	  
	       steps {
		   
		   sh " kubectl apply -f *.yaml
		   
		   
		   }
	  
	  
	  
	  }
	  
	  
	
  
  
  }

}
