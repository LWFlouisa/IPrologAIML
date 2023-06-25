# Make sure that story elements are kept on seperate lines.
character_fate = File.readlines("_narratives/outcomes/character_fates.txt")
dating_outcome = File.readlines("_narratives/outcomes/dating_outcomes.txt")

character_fate_pl = File.readlines("_narratives/outcomes/reasoning/character_fates.txt")
dating_outcome_pl = File.readlines("_narratives/outcomes/reasoning/dating_outcomes.txt")

open("_imaginedpath/prolog/nuetral_outcome.pl", "w") { |f|
  segment_1 = character_fate_pl[1].strip
  segment_2 = dating_outcome_pl[0].strip

  f.puts "#{segment_1}."
  f.puts "#{segment_1} :- #{segment_2}"
}

# Imagined a compromise path that is neither ideal or tragic.
open("_imaginedpath/brains/nuetral_outcome.aiml", "w") { |f|
  segment_1 = character_fate[1].strip
  segment_2 = dating_outcome[0].strip

  aiml = "<?xml version = '1.0' encoding = 'UTF-8'?>
<aiml version = '1.0.1' encoding = 'UTF-8'>
  <category>
    <pattern>What is the least good outcome that is not the worst?</pattern>
    <template>#{segment_1} #{segment_2}
      <system>swipl outcome_consultant.pl</system>
    </template>
  </category>
</aiml>
"

  f.puts aiml
}
