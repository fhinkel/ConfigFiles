set history save on 
set history expansion on
set history size 100000

# Copyright 2014 the V8 project authors. All rights reserved.
# Use of this source code is governed by a BSD-style license that can be
# found in the LICENSE file.

# Print HeapObjects.
define job
print ((v8::internal::HeapObject*)($arg0))->Print()
end
document job
Print a v8 JavaScript object
Usage: job tagged_ptr
end

# Print Code objects containing given PC.
define jco
job (v8::internal::Isolate::Current()->FindCodeObject((v8::internal::Address)$arg0))
end
document jco
Print a v8 Code object from an internal code address
Usage: jco pc
end

# Print DescriptorArray.
define jda
print ((v8::internal::DescriptorArray*)($arg0))->Print()
end
document jda
Print a v8 DescriptorArray object
Usage: jda tagged_ptr
end

# Print TransitionArray.
define jta
print ((v8::internal::TransitionArray*)($arg0))->Print()
end
document jta
Print a v8 TransitionArray object
Usage: jta tagged_ptr
end

# Print JavaScript stack trace.
define jst
print v8::internal::Isolate::Current()->PrintStack((FILE*) stdout)
end
document jst
Print the current JavaScript stack trace
Usage: jst
end

# set disassembly-flavor intel
# set disable-randomization off
set solib-search-path  /drive/g3-test-45/google3/blaze-bin/java/com/google/android/apps/docs/editors/punch/obj/local/armeabi/

# loop until crash
define loop
set pagination off
break exit
commands
run
end
end
