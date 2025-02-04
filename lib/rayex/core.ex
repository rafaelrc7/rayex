defmodule Rayex.Core do
  @on_load :load_nifs

  def load_nifs do
    :erlang.load_nif('priv/raylib_core', 0)
  end

  ##########
  # Window #
  ##########

  # Window Management

  @doc "Initialize window and OpenGL context"
  @spec init_window(integer(), integer(), String.t()) :: :ok
  def init_window(_width, _height, _title),
    do: raise("NIF init_window/3 not implemented")

  @doc "Check if KEY_ESCAPE pressed or Close icon pressed"
  @spec window_should_close() :: boolean()
  def window_should_close,
    do: raise("NIF window_should_close/0 not implemented")

  @doc "Close window and unload OpenGL context"
  @spec close_window() :: :ok
  def close_window,
    do: raise("NIF close_window/0 not implemented")

  # Is Window X ?

  @doc "Check if window has been initialized successfully"
  @spec is_window_ready? :: boolean()
  def is_window_ready?,
    do: raise("NIF is_window_ready/0 not implemented")

  @doc "Check if window is currently fullscreen"
  @spec is_window_fullscreen? :: boolean()
  def is_window_fullscreen?,
    do: raise("NIF is_window_fullscreen?/0 not implemented")

  @doc "Check if window is currently hidden (only PLATFORM_DESKTOP)"
  @spec is_window_hidden? :: boolean()
  def is_window_hidden?,
    do: raise("NIF is_window_hidden?/0 not implemented")

  @doc "Check if window is currently minimized (only PLATFORM_DESKTOP)"
  @spec is_window_minimized? :: boolean()
  def is_window_minimized?,
    do: raise("NIF is_window_minimized?/0 not implemented")

  @doc "Check if window is currently maximized (only PLATFORM_DESKTOP)"
  @spec is_window_maximized? :: boolean()
  def is_window_maximized?,
    do: raise("NIF is_window_maximized?/0 not implemented")

  @doc "Check if window is currently focused (only PLATFORM_DESKTOP)"
  @spec is_window_focused? :: boolean()
  def is_window_focused?,
    do: raise("NIF is_window_focused?/0 not implemented")

  @doc "Check if window has been resized last frame"
  @spec is_window_resized? :: boolean()
  def is_window_resized?,
    do: raise("NIF is_window_resized?/0 not implemented")

  # Window State

  @doc "Check if one specific window flag is enabled"
  @spec is_window_state?(pos_integer()) :: boolean()
  def is_window_state?(_flag),
    do: raise("NIF is_window_state?/0 not implemented")
end
