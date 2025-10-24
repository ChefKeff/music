use_bpm 130

live_loop :met1 do
  sleep 1
end


live_loop :kik, sync: :met1 do
  sample :bd_haus, rate: 1
  sleep 1
end

live_loop :bass, sync: :met1 do
  with_fx :lpf, cutoff: 100 do
    with_fx :tremolo, depth: 0.7, phase: 1 do
      use_synth :bass_foundation
      play_pattern_timed [:C2,:C2,:C2,:Ds3,:C2,:G4,:F4,:C3], [0.25], release: 0.5
    end
  end
end 