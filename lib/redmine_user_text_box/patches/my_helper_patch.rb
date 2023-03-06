# encoding: utf-8
#
# Redmine plugin for a full fledged email client per project
#
# Copyright © 2018 Stephan Wenzel <stephan.wenzel@drwpatent.de>
#
# This program is free software; you can redistribute it and/or
# modify it under the terms of the GNU General Public License
# as published by the Free Software Foundation; either version 2
# of the License, or (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.
#

module RedmineUserTextBox
  module Patches
    module MyHelperPatch
      def self.included(base)
        base.send(:include, InstanceMethods)
        base.class_eval do
        
          unloadable 
        
          # renders project emails block in my page
          def render_user_text_box_block(block, settings)
            render :partial => 'my/blocks/user_text_box'
          end
           
        end #base
      end #self
      
      module InstanceMethods
      end #module
    
    end #module
  end #module
end #module


unless MyHelper.included_modules.include?(RedmineUserTextBox::Patches::MyHelperPatch)
    MyHelper.send(:include, RedmineUserTextBox::Patches::MyHelperPatch)
end


