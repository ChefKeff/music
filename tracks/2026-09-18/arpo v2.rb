use_bpm 155

live_loop :atmo_arp do
  with_synth :subpulse do
    with_fx :gverb, spread: 0.8, mix: 0.8, amp: 0.32 do
      with_fx :nlpf, cutoff: rrand(20,100), amp: 0.5 do
        p = play (chord :f6, :minor).choose - [0, 12, 7, -5].choose, divisor: 0.01, div_slide: rrand(0, 10), depth: rrand(0.001, 2), release: 0.5, amp: rrand(0.25, 0.5)
        sleep 0.5
      end
    end
  end
end

live_loop :synth_loop do
  with_synth :dtri do
    with_fx :echo, mix: 0.8, phase: 0.25 do
      sleep 1
      play 73, release: 0.5
    end
  end
end



live_loop :stabby_bass do
  with_synth :bass_foundation do
    with_fx :distortion, distort: 0.1 do
      with_fx :nlpf, cutoff: rrand(50,75), amp: 4 do
        play :f1, amp: 4, release: 0.7
        sleep 0.5
        play :f1, amp: 4, release: 0.6
        sleep 0.5
        play :f1, amp: 4, release: 0.6
        sleep 0.5
        play :f1, amp: 4, release: 0.9
        sleep 0.5
        play :f1, amp: 4, release: 0.7
        sleep 0.5
        play :f1, amp: 4, release: 0.6
        sleep 0.5
        play :f1, amp: 4,  release: 0.6
        sleep 0.5
        play :f1, amp: 4,  release: 0.9
        sleep 0.5
        play :c1, amp: 4, release: 0.7
        sleep 0.5
        play :c1, amp: 4, release: 0.6
        sleep 0.5
        play :c1, amp: 4, release: 0.6
        sleep 0.5
        play :c1, amp: 4, release: 0.9
        sleep 0.5
        play :Gs1, amp: 4, release: 0.74
        sleep 0.5
        play :Gs1, amp: 4, release: 0.64
        sleep 0.5
        play :Gs1, amp: 4, release: 0.64
        sleep 0.5
        play :Gs1, amp: 4, release: 0.94
        sleep 0.5
      end
    end
  end
end

live_loop :synth_chords do
  with_synth :prophet do
    with_fx :distortion, distort: 0.4 do
      play_chord [:f3, :gs4], amp: 4, release: 0.7
      sleep 0.5
      play_chord [:f3, :gs4], amp: 4, release: 0.6
      sleep 0.5
      play_chord [:f3, :gs4], amp: 4, release: 0.6
      sleep 0.5
      play_chord [:f3, :as4], amp: 4, release: 0.9
      sleep 0.5
      play_chord [:f3, :as4], amp: 4, release: 0.7
      sleep 0.5
      play_chord [:f3, :as4], amp: 4, release: 0.6
      sleep 0.5
      play_chord [:f3, :c4], amp: 4,  release: 0.6
      sleep 0.5
      play_chord [:f3, :c4], amp: 4,  release: 0.9
      sleep 0.5
      play_chord [:c3, :ds4], amp: 4, release: 0.7
      sleep 0.5
      play_chord [:c3, :ds4], amp: 4, release: 0.6
      sleep 0.5
      play_chord [:c3, :ds4], amp: 4, release: 0.6
      sleep 0.5
      play_chord [:c3, :ds4], amp: 4, release: 0.9
      sleep 0.5
      play_chord [:gs3, :c4], amp: 4, release: 0.7
      sleep 0.5
      play_chord [:gs3, :c4], amp: 4, release: 0.6
      sleep 0.5
      play_chord [:gs3, :c4], amp: 4, release: 0.6
      sleep 0.5
      play_chord [:gs3, :c4], amp: 4, release: 0.9
      sleep 0.5
    end
  end
end

##| live_loop :drums do
##|   sample :bd_tek



