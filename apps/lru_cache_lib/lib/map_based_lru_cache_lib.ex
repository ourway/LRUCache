defmodule MapBasedLruCacheLib do
  @moduledoc """
  in simplest mode like SimpleLruCacheLib we used array
  to store keys which used by cache, and the problem
  was this method does not provide good search, because
  in the time we want change recently updated key we should
  whole of array to find target key and remove it and move it
  to head of array.
  Map provides better algorithm to searching and adding and removing
  something like O(log N).

  ## Breif Algorithm
  we can consider Map keys like befor array index
  and Map Values as key. see below:

  [k1, k2, k3, ... , k100]  === %{ 1 => k1, 2 => k2, 3 => k3, ... 100 => k100}

  this seems good but there is a problem, consider we used k3 and want change
  priority the final map should be something like:

    %{ 1 => k3, 2 => k1, 3 => k2, ... 100 => k100}

  this means all keys lesser than k3 key should be updated to k+1.
  to avoid this problem we can order descending, that means
  item with biggest value is most recently used one,
  so our map will be something like:

    %{ 1 => k100, 2 => k99, 3 => k98, ... 100 => k1}

  so by accessing to k3 (by get/put) we will have

   (before access):  %{ 1 => k100, ..., 98=>k3, 99=>k2, 100 => k1}
   (after access) :  %{ 1 => k100, ..., 99=>k2, 100 => k1, 101 => k3}

  ok, so a challenge:
  How you delete item by key from this map?
  consider we want to delete k50, how it is possible?
  simply we can have reverse map to this map.

  """

  defstruct size: 0,
            capacity: 0,
            access_counter: 0,
            hash_map: %{},
            counter_key_map: %{},
            key_counter_map: %{}

  @type map_based_lru_cache() :: %__MODULE__{
          size: integer,
          capacity: integer,
          access_counter: integer,
          hash_map: map(),
          counter_key_map: map(),
          key_counter_map: map()
        }

  @behaviour LruCacheLib

  @spec new_instance(integer) :: map_based_lru_cache()
  @impl true
  def new_instance(capacity) do
    # TODO: implement this
  end

  @spec put(maped_based_lru_cache(), String.t(), any) :: maped_based_lru_cache()
  @impl true
  def put(maped_based_lru_cache = %__MODULE__{}, key, value) do
    # TODO: implement this
  end

  @spec delete(maped_based_lru_cache(), String.t()) :: maped_based_lru_cache()
  @impl true
  def delete(maped_based_lru_cache = %__MODULE__{}, key) do
    # TODO: implement this
  end

  @spec get(maped_based_lru_cache(), String.t()) ::
          {false, nil, maped_based_lru_cache()} | {true, any, maped_based_lru_cache()}
  @impl true
  def get(maped_based_lru_cache = %__MODULE__{}, key) do
    # TODO: implement this
  end

  @spec size(maped_based_lru_cache()) :: integer
  @impl true
  def size(maped_based_lru_cache = %__MODULE__{}) do
    # TODO: implement this
  end

  @spec capacity(maped_based_lru_cache()) :: integer
  @impl true
  def capacity(maped_based_lru_cache = %__MODULE__{}) do
    # TODO: implement this
  end
end
