defmodule Tracker.TimeTest do
  use Tracker.DataCase

  alias Tracker.Time

  describe "time_blocks" do
    alias Tracker.Time.TimeBlock

    @valid_attrs %{end: ~N[2010-04-17 14:00:00.000000], start: ~N[2010-04-17 14:00:00.000000]}
    @update_attrs %{end: ~N[2011-05-18 15:01:01.000000], start: ~N[2011-05-18 15:01:01.000000]}
    @invalid_attrs %{end: nil, start: nil}

    def time_block_fixture(attrs \\ %{}) do
      {:ok, time_block} =
        attrs
        |> Enum.into(@valid_attrs)
        |> Time.create_time_block()

      time_block
    end

    test "list_time_blocks/0 returns all time_blocks" do
      time_block = time_block_fixture()
      assert Time.list_time_blocks() == [time_block]
    end

    test "get_time_block!/1 returns the time_block with given id" do
      time_block = time_block_fixture()
      assert Time.get_time_block!(time_block.id) == time_block
    end

    test "create_time_block/1 with valid data creates a time_block" do
      assert {:ok, %TimeBlock{} = time_block} = Time.create_time_block(@valid_attrs)
      assert time_block.end == ~N[2010-04-17 14:00:00.000000]
      assert time_block.start == ~N[2010-04-17 14:00:00.000000]
    end

    test "create_time_block/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Time.create_time_block(@invalid_attrs)
    end

    test "update_time_block/2 with valid data updates the time_block" do
      time_block = time_block_fixture()
      assert {:ok, time_block} = Time.update_time_block(time_block, @update_attrs)
      assert %TimeBlock{} = time_block
      assert time_block.end == ~N[2011-05-18 15:01:01.000000]
      assert time_block.start == ~N[2011-05-18 15:01:01.000000]
    end

    test "update_time_block/2 with invalid data returns error changeset" do
      time_block = time_block_fixture()
      assert {:error, %Ecto.Changeset{}} = Time.update_time_block(time_block, @invalid_attrs)
      assert time_block == Time.get_time_block!(time_block.id)
    end

    test "delete_time_block/1 deletes the time_block" do
      time_block = time_block_fixture()
      assert {:ok, %TimeBlock{}} = Time.delete_time_block(time_block)
      assert_raise Ecto.NoResultsError, fn -> Time.get_time_block!(time_block.id) end
    end

    test "change_time_block/1 returns a time_block changeset" do
      time_block = time_block_fixture()
      assert %Ecto.Changeset{} = Time.change_time_block(time_block)
    end
  end
end
