.class Lcom/android/bluetooth/ftp/BluetoothFtpActivity$2;
.super Landroid/os/Handler;
.source "BluetoothFtpActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/ftp/BluetoothFtpActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/ftp/BluetoothFtpActivity;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/ftp/BluetoothFtpActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 324
    iput-object p1, p0, Lcom/android/bluetooth/ftp/BluetoothFtpActivity$2;->this$0:Lcom/android/bluetooth/ftp/BluetoothFtpActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 327
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 335
    :goto_0
    return-void

    .line 329
    :pswitch_0
    const-string v0, "BluetoothFtpActivity"

    const-string v1, "Received DISMISS_TIMEOUT_DIALOG msg"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    iget-object v0, p0, Lcom/android/bluetooth/ftp/BluetoothFtpActivity$2;->this$0:Lcom/android/bluetooth/ftp/BluetoothFtpActivity;

    invoke-virtual {v0}, Lcom/android/bluetooth/ftp/BluetoothFtpActivity;->finish()V

    goto :goto_0

    .line 327
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
