public class HelloAgain : Gtk.Application {
    public class HelloAgain () {
        Object (
            application_id: "com.github.cam-jm.hello-again",
            flags: ApplicationFlags.FLAGS_NONE
        );
    }
    
    protected override void activate () {
        
        var label = new Gtk.Label (_("Hello there 2.0"));
        var main_window = new Gtk.ApplicationWindow (this) {
            default_width = 300,
            default_height = 300,
            title = _("Hello there")
        };
        main_window.add (label);
        main_window.show_all ();
    }
    
    public static int main (string[] args) {
        return new HelloAgain ().run (args);
    }
}