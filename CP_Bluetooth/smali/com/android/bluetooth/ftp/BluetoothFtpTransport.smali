.class public Lcom/android/bluetooth/ftp/BluetoothFtpTransport;
.super Ljava/lang/Object;
.source "BluetoothFtpTransport.java"

# interfaces
.implements Ljavax/btobex/ObexTransport;


# static fields
.field public static final TYPE_L2CAP:I = 0x1

.field public static final TYPE_RFCOMM:I


# instance fields
.field private mSocket:Landroid/bluetooth/BluetoothSocket;

.field private final mType:I


# direct methods
.method public constructor <init>(Landroid/bluetooth/BluetoothSocket;I)V
    .locals 1
    .parameter "rfs"
    .parameter "type"

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/ftp/BluetoothFtpTransport;->mSocket:Landroid/bluetooth/BluetoothSocket;

    .line 52
    iput-object p1, p0, Lcom/android/bluetooth/ftp/BluetoothFtpTransport;->mSocket:Landroid/bluetooth/BluetoothSocket;

    .line 53
    iput p2, p0, Lcom/android/bluetooth/ftp/BluetoothFtpTransport;->mType:I

    .line 54
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/bluetooth/ftp/BluetoothFtpTransport;->mSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->close()V

    .line 58
    return-void
.end method

.method public connect()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 77
    return-void
.end method

.method public create()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 80
    return-void
.end method

.method public disconnect()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 83
    return-void
.end method

.method public getRemoteAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/bluetooth/ftp/BluetoothFtpTransport;->mSocket:Landroid/bluetooth/BluetoothSocket;

    if-nez v0, :cond_0

    .line 94
    const/4 v0, 0x0

    .line 95
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/ftp/BluetoothFtpTransport;->mSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->getRemoteDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public isAmpCapable()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 99
    iget v1, p0, Lcom/android/bluetooth/ftp/BluetoothFtpTransport;->mType:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isConnected()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 89
    const/4 v0, 0x1

    return v0
.end method

.method public isSrmCapable()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 103
    iget v1, p0, Lcom/android/bluetooth/ftp/BluetoothFtpTransport;->mType:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public listen()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 86
    return-void
.end method

.method public openDataInputStream()Ljava/io/DataInputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 61
    new-instance v0, Ljava/io/DataInputStream;

    invoke-virtual {p0}, Lcom/android/bluetooth/ftp/BluetoothFtpTransport;->openInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method

.method public openDataOutputStream()Ljava/io/DataOutputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 65
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-virtual {p0}, Lcom/android/bluetooth/ftp/BluetoothFtpTransport;->openOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-object v0
.end method

.method public openInputStream()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/bluetooth/ftp/BluetoothFtpTransport;->mSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public openOutputStream()Ljava/io/OutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/bluetooth/ftp/BluetoothFtpTransport;->mSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method public setDesiredAmpPolicy(I)Z
    .locals 2
    .parameter "policy"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/bluetooth/ftp/BluetoothFtpTransport;->mSocket:Landroid/bluetooth/BluetoothSocket;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/bluetooth/ftp/BluetoothFtpTransport;->mType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 108
    :cond_0
    const/4 v0, 0x0

    .line 109
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/bluetooth/ftp/BluetoothFtpTransport;->mSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothSocket;->setDesiredAmpPolicy(I)Z

    move-result v0

    goto :goto_0
.end method
