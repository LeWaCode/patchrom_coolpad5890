.class Lcom/android/bluetooth/map/BluetoothMasTestActivity$3;
.super Landroid/os/Handler;
.source "BluetoothMasTestActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/map/BluetoothMasTestActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/map/BluetoothMasTestActivity;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/map/BluetoothMasTestActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 292
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMasTestActivity$3;->this$0:Lcom/android/bluetooth/map/BluetoothMasTestActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 295
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 303
    :goto_0
    return-void

    .line 297
    :pswitch_0
    invoke-static {}, Lcom/android/bluetooth/map/BluetoothMasTestActivity;->access$200()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "BluetoothMasActivity"

    const-string v1, "Received DISMISS_TIMEOUT_DIALOG msg."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasTestActivity$3;->this$0:Lcom/android/bluetooth/map/BluetoothMasTestActivity;

    invoke-virtual {v0}, Lcom/android/bluetooth/map/BluetoothMasTestActivity;->finish()V

    goto :goto_0

    .line 295
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
