.class Lcom/android/bluetooth/ftp/BluetoothFtpActivity$1;
.super Landroid/content/BroadcastReceiver;
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
    .line 96
    iput-object p1, p0, Lcom/android/bluetooth/ftp/BluetoothFtpActivity$1;->this$0:Lcom/android/bluetooth/ftp/BluetoothFtpActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 99
    const-string v0, "com.android.bluetooth.ftp.userconfirmtimeout"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 103
    :goto_0
    return-void

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/ftp/BluetoothFtpActivity$1;->this$0:Lcom/android/bluetooth/ftp/BluetoothFtpActivity;

    #calls: Lcom/android/bluetooth/ftp/BluetoothFtpActivity;->onTimeout()V
    invoke-static {v0}, Lcom/android/bluetooth/ftp/BluetoothFtpActivity;->access$000(Lcom/android/bluetooth/ftp/BluetoothFtpActivity;)V

    goto :goto_0
.end method
