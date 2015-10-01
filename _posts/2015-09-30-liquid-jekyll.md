---
layout: post
title: Liquid Jekyll
published: true
description: "Finding Time."
modified: 2015-09-30
category: articles
tags: [liquid, templating, jekyll, time]
image:
  feature: css_code.jpg
  credit: denverlibrary.org
  creditlink: https://www.denverlibrary.org
comments: true  
---

# Liquid Jekyll - Finding Time &#58;

The Jekyll template this site is based on originally used Jekyll modules to estimate blog post read times. This works great when you are hosting your site using "jekyll serve". Any Jekyll Modules within the _plugins folder can be used to build your site. These ruby-based modules are usually simple to write and work well most of the time.

# The Problem &#58;
When you don't pre-build your site and rely on Github Pages to take your code and turn it into your _site , you end up with a few added restrictions. The biggest of these is Github Pages runs Jekyll with the --safe flag, which inherently disables any 3rd-party modules. This means your lovely _plugins folder gets ignored.
<a>http://jekyllrb.com/docs/plugins/</a>

In my case, I want to automatically generate and display how long a post will take an average person to read. The original setup of this Jekyll theme used the following Jekyll Modules to compute the time and display the value.

On the page &#58;

{% raw %}
<code>
...
<i class="icon-time"></i> {{ post.content.size | readtime | pluralize: "minute" }}  read</span>
...
{% endraw %}
</code>

read-time.rb &#58;
~~~ ruby
<code>
module ReadTimeFilter
	def readtime(input)
		charcount = 4.5
		wpm = 335
		rt = (input.to_f/charcount/wpm).round
		rt = 1 if rt < 1
		rt
	end
	Liquid::Template.register_filter self
end
</code>
~~~

pluralize.rb &#58;
~~~ ruby
<code>
module Jekyll
	module Pluralize
		def pluralize(number, singular, plural=nil)
			if number == 1
				"#{number} #{singular}"
			elsif plural == nil
				"#{number} #{singular}s"
			else
				"#{number} #{plural}"
			end
		end
	end
end
Liquid::Template.register_filter(Jekyll::Pluralize)
</code>
~~~

# The Solution
As found on <a>http://milanaryal.com/2015/knowing-the-site-generated-time-by-jekyll-on-github-pages/</a> , if you are using Liquid templating in your Jekyll build, you can use "Liquid Tags" to achieve a fair amount of logic using inline tags instead of ruby scripts.

On the page &#58;

{% raw %}
<code>
...
<i class="icon-time"></i> {{ post.content.size | divided_by:1507 }}  minute read</span>
...
{% endraw %}
</code>

# Other Useful Tidbits &#58;
<a>http://jekyllrb.com/docs/templates/</a>

<a>http://jekyllrb.com/docs/structure/</a>
