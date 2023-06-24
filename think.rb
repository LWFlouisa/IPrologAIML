# Make sure that story elements are kept on seperate lines.
character_fate = File.readlines("_narratives/outcomes/character_fates.txt")
dating_outcome = File.readlines("_narratives/outcomes/dating_outcomes.txt")

# Make the total imagined branch the size of the darkest path.
# branch_size = branch_1.size.to_i

# Imagined a compromise path that is neither ideal or tragic.
open("_imaginedpath/brains/nuetral_outcome.aiml", "w") { |f|
  segment_1 = character_fate[1].strip
  segment_2 = dating_outcome[0].strip

  aiml = "<?xml version = '1.0' encoding = 'UTF-8'?>
<aiml version = '1.0.1' encoding = 'UTF-8'>
  <category>
    <pattern>Can you tell me the nuetral path within this dataset?</pattern>
    <template>#{segment_1} #{segment_2}</template>
  </category>
</aiml>
"

  f.puts aiml
}
