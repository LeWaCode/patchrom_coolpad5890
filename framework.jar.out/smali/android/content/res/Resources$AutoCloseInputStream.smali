.class Landroid/content/res/Resources$AutoCloseInputStream;
.super Ljava/io/InputStream;
.source "Resources.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/res/Resources;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AutoCloseInputStream"
.end annotation


# instance fields
.field mInputStream:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .parameter "is"

    .prologue
    .line 2437
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 2431
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/res/Resources$AutoCloseInputStream;->mInputStream:Ljava/io/InputStream;

    .line 2438
    iput-object p1, p0, Landroid/content/res/Resources$AutoCloseInputStream;->mInputStream:Ljava/io/InputStream;

    .line 2439
    return-void
.end method


# virtual methods
.method public available()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2445
    iget-object v0, p0, Landroid/content/res/Resources$AutoCloseInputStream;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    return v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2452
    iget-object v0, p0, Landroid/content/res/Resources$AutoCloseInputStream;->mInputStream:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 2453
    iget-object v0, p0, Landroid/content/res/Resources$AutoCloseInputStream;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 2454
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/res/Resources$AutoCloseInputStream;->mInputStream:Ljava/io/InputStream;

    .line 2456
    :cond_0
    return-void
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 2502
    invoke-virtual {p0}, Landroid/content/res/Resources$AutoCloseInputStream;->close()V

    .line 2503
    return-void
.end method

.method public mark(I)V
    .locals 1
    .parameter "readlimit"

    .prologue
    .line 2462
    iget-object v0, p0, Landroid/content/res/Resources$AutoCloseInputStream;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->mark(I)V

    .line 2463
    return-void
.end method

.method public markSupported()Z
    .locals 1

    .prologue
    .line 2469
    iget-object v0, p0, Landroid/content/res/Resources$AutoCloseInputStream;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    return v0
.end method

.method public read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2498
    iget-object v0, p0, Landroid/content/res/Resources$AutoCloseInputStream;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 1
    .parameter "buffer"
    .parameter "offset"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2477
    iget-object v0, p0, Landroid/content/res/Resources$AutoCloseInputStream;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public declared-synchronized reset()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2484
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/content/res/Resources$AutoCloseInputStream;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2485
    monitor-exit p0

    return-void

    .line 2484
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public skip(J)J
    .locals 2
    .parameter "byteCount"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2491
    iget-object v0, p0, Landroid/content/res/Resources$AutoCloseInputStream;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    return-wide v0
.end method
