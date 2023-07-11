/*
 * Copyright (C) 2023, Automated Quality Assurance Group,
 * TU Dortmund University, Germany. All rights reserved.
 *
 * Example1.java is licensed under the Apache License,
 * Version 2.0 (the "License"); you may not use this file except in compliance
 * with the License. You may obtain a copy of the License at
 * http://www.apache.org/licenses/LICENSE-2.0.
 *
 * Unless required by applicable law or agreed to in writing, software distributed
 * under the License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR
 * CONDITIONS OF ANY KIND, either express or implied. See the License for the
 * specific language governing permissions and limitations under the License.
 */

import tools.aqua.concolic.Tainting;
import tools.aqua.concolic.Verifier;

import static tools.aqua.concolic.Tainting.IFSPEC;


public class Example1 {

    public static void main(String[] args) {
	  String s = Verifier.nondetString();
      if (s.length() > 0 || s.equals("OHOH")) {
      	assert false;
      }
    }

}
