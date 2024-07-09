alg_order(alg::ROS2) = 2
alg_order(alg::ROS2PR) = 2
alg_order(alg::ROS2S) = 2
alg_order(alg::ROS3) = 3
alg_order(alg::ROS3PR) = 3
alg_order(alg::Scholz4_7) = 3
alg_order(alg::Rosenbrock23) = 2
alg_order(alg::Rodas23W) = 3
alg_order(alg::Rosenbrock32) = 3
alg_order(alg::ROS3P) = 3
alg_order(alg::Rodas3) = 3
alg_order(alg::Rodas3P) = 3
alg_order(alg::ROS34PW1a) = 3
alg_order(alg::ROS34PW1b) = 3
alg_order(alg::ROS34PW2) = 3
alg_order(alg::ROS34PW3) = 4
alg_order(alg::ROS34PRw) = 3
alg_order(alg::ROS3PRL) = 3
alg_order(alg::ROS3PRL2) = 3
alg_order(alg::ROK4a) = 4
alg_order(alg::RosShamp4) = 4
alg_order(alg::Veldd4) = 4
alg_order(alg::Velds4) = 4
alg_order(alg::GRK4T) = 4
alg_order(alg::GRK4A) = 4
alg_order(alg::Ros4LStab) = 4
alg_order(alg::RosenbrockW6S4OS) = 4
alg_order(alg::Rodas4) = 4
alg_order(alg::Rodas42) = 4
alg_order(alg::Rodas4P) = 4
alg_order(alg::Rodas4P2) = 4
alg_order(alg::Rodas5) = 5
alg_order(alg::Rodas5P) = 5
alg_order(alg::Rodas5Pr) = 5
alg_order(alg::Rodas5Pe) = 5

isfsal(alg::Rodas3P) = false
isfsal(alg::Rodas23W) = false
isfsal(alg::Rodas5) = false
isfsal(alg::Rodas5P) = false
isfsal(alg::Rodas5Pr) = false
isfsal(alg::Rodas5Pe) = false
isfsal(alg::Rodas4) = false
isfsal(alg::Rodas42) = false
isfsal(alg::Rodas4P) = false
isfsal(alg::Rodas4P2) = false

isWmethod(alg::Rosenbrock23) = true
isWmethod(alg::Rosenbrock32) = true
isWmethod(alg::Rodas23W) = true
isWmethod(alg::ROS2S) = true
isWmethod(alg::ROS34PW1a) = true
isWmethod(alg::ROS34PW1b) = true
isWmethod(alg::ROS34PW2) = true
isWmethod(alg::ROS34PW3) = true
isWmethod(alg::ROS34PRw) = true
isWmethod(alg::ROK4a) = true
isWmethod(alg::RosenbrockW6S4OS) = true

alg_adaptive_order(alg::Rosenbrock23) = 3
alg_adaptive_order(alg::Rosenbrock32) = 2

is_mass_matrix_alg(alg::RosenbrockAlgorithm) = true

function is_mass_matrix_alg(alg::CompositeAlgorithm{
        <:Any, <:Tuple{Tsit5, Rosenbrock23, Rodas5P, FBDF, FBDF}})
    true
end