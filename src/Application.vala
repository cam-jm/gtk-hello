public class MyApp : Gtk.Application {
    public MyApp () {
        Object (
            application_id: "com.github.cam-jm.gtk-hello",
            flags: ApplicationFlags.FLAGS_NONE
        );
    }
    
    protected override void activate () {
    
        var button_hello = new Gtk.Button.with_label ("click me!") {
            margin = 12
        }
        
        button_hello.clicked.connect (() => {
            button_hello.label = "Hello there!";
            button_hello.sensitivity = false;
        });
    
        var main_window = new Gtk.ApplicationWindow (this) {
            default_width = 300,
            default_height = 300,
            title = "Hello world!"
        };
        
        main_window.add (button_hello);
        main_window.show_all ();
    }
    
    public static int main (string[] args) {
        return new MyApp ().run (args);
    }
}
