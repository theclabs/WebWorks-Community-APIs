/*
* Copyright 2010-2011 Research In Motion Limited.
*
* Licensed under the Apache License, Version 2.0 (the "License");
* you may not use this file except in compliance with the License.
* You may obtain a copy of the License at
*
* http://www.apache.org/licenses/LICENSE-2.0
*
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an "AS IS" BASIS,
* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
* See the License for the specific language governing permissions and
* limitations under the License.
*/



//------------------------------------------------------------------------------------
//
// CREATE YOUR OWN BLACKBERRY WEBWORKS EXTENSION WITH THIS TEMPLATE.
// GET STARTED BY COMPLETING ALL OF THE 'STEP' INSTRUCTIONS LISTED BELOW.
//
// 1. Namespace
// 2. Class name
// 3. Define feature names
// 4. Return list of feature names
// 5. Associate namespace class with each feature
//
//
//  Consider contributing your extension to the BlackBerry WebWorks Community APIs:
//	   https://github.com/blackberry/WebWorks-Community-APIs
//
//------------------------------------------------------------------------------------


/**
*  An extension is a bridge between JavaScript, running in a WebWorks application, and 
*  developer APIs found in the underlying OS (J2ME for BlackBerry Smartphones and Adobe 
*  AIR for BlackBerry Tablet OS).
*
*  Using this technique, WebWorks developers can expose any native feature available from the 
*	BlackBerry OS in their HTML5 application content.
*
* Example (config.xml): 
*		<feature id="webworks.template" required="true" version="1.0.0.0"/>
*
* Example (JavaScript): 
*		webworks.template.add()
*/


//
//STEP 1: Choose a unique package name that describes your extension.
//        Use the same package name in all classes that define this extension.
//
//		  e.g. "my.extension" or "companyname.description"
//
package webworks.template
{
    import webworks.extension.DefaultExtension;
    import webworks.extension.WebWorksReturnValue;
    import webworks.service.ServiceManager;

//
//STEP 2: Rename this class and constructor to describe the primary purpose of this extension.
//		  e.g. HelloWorldExtension or LEDextension
//
    public class TemplateExtension extends DefaultExtension
    {
//
//STEP 3: For each feature name, add it to an array. 
//
        private const FEATURE_ID:Array = new Array("webworks.template");

		private var _boolean:Boolean = false;
		private var _string:String   = "hello";
		private var _integer:Number  = 0;

//
//STEP 2 (Continued): Rename this constructor to match the class name.
//
        public function TemplateExtension()
        {
            super();
        }

        override public function getFeatureList():Array
        {
            return FEATURE_ID;
        }
		
		
//
//STEP 4: Replace the following section with any properties or functions that 
//        will be supported in your extension.
//		
		public function getBoolean():Boolean
		{ 	
			return _boolean;
		}
		public function setBoolean(value:Boolean):void
		{ 	
			_boolean = value;
		}
		
		public function getString():String
		{ 	
			return _string;
		}
		public function setString(value:String):void
		{
			_string = value;
		}
		public function getInteger():Number
		{ 	
			return _integer;
		}
		public function setInteger(value:Number):void
		{ 	
			_integer = value;
		}
		

		//Functions
        public function add(first:Number, second:Number):Number
        {
            return (first + second);
        }
		public function log():void
		{
			trace("TemplateExtension - log function called.");
		}

    }
}
