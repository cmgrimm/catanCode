% Generate catan board

%%%%%%%%%%%%%%%%%
% 1 = wood
% 2 = brick
% 3 = wheat
% 4 = sheep
% 5 = stone
%%%%%%%%%%%%%%%%%

% vector of tiles
tiles = [1,1,1,1,2,2,2,3,3,3,3,4,4,4,4,5,5,5];

% number tiles
rolls = [11,12,9,4,6,5,10,3,11,4,8,8,10,9,3,5,2,6];
rolls = sort(rolls);

%generate board tiles and rolls
boardTiles = randsample(tiles,18);
boardRolls = randsample(rolls,18);

% insert the desert tile
desert = randi([2 18],1,1);
boardTiles = [boardTiles(1:desert-1),0,boardTiles(desert:18)];
boardRolls = [boardRolls(1:desert-1),0,boardRolls(desert:18)];


