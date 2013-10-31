.class public Landroid/net/wifi/pppoe/PppoeInfo;
.super Ljava/lang/Object;
.source "PppoeInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/pppoe/PppoeInfo$Status;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/wifi/pppoe/PppoeInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "PppoeInfo"


# instance fields
.field private current_time:J

.field public online_time:J

.field private start_time:J

.field public status:Landroid/net/wifi/pppoe/PppoeInfo$Status;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 83
    new-instance v0, Landroid/net/wifi/pppoe/PppoeInfo$1;

    invoke-direct {v0}, Landroid/net/wifi/pppoe/PppoeInfo$1;-><init>()V

    sput-object v0, Landroid/net/wifi/pppoe/PppoeInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    .line 28
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 29
    sget-object v0, Landroid/net/wifi/pppoe/PppoeInfo$Status;->OFFLINE:Landroid/net/wifi/pppoe/PppoeInfo$Status;

    iput-object v0, p0, Landroid/net/wifi/pppoe/PppoeInfo;->status:Landroid/net/wifi/pppoe/PppoeInfo$Status;

    .line 31
    iput-wide v1, p0, Landroid/net/wifi/pppoe/PppoeInfo;->online_time:J

    .line 32
    iput-wide v1, p0, Landroid/net/wifi/pppoe/PppoeInfo;->start_time:J

    .line 33
    iput-wide v1, p0, Landroid/net/wifi/pppoe/PppoeInfo;->current_time:J

    .line 34
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x0

    return v0
.end method

.method public updatePppoeOnlineTime()V
    .locals 4

    .prologue
    .line 37
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p0, Landroid/net/wifi/pppoe/PppoeInfo;->current_time:J

    .line 38
    iget-wide v0, p0, Landroid/net/wifi/pppoe/PppoeInfo;->current_time:J

    iget-wide v2, p0, Landroid/net/wifi/pppoe/PppoeInfo;->start_time:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 39
    const-string v0, "PppoeInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "err start_time:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/net/wifi/pppoe/PppoeInfo;->start_time:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",and set start_time to current:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/net/wifi/pppoe/PppoeInfo;->current_time:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    iget-wide v0, p0, Landroid/net/wifi/pppoe/PppoeInfo;->current_time:J

    iput-wide v0, p0, Landroid/net/wifi/pppoe/PppoeInfo;->start_time:J

    .line 43
    :cond_0
    iget-wide v0, p0, Landroid/net/wifi/pppoe/PppoeInfo;->current_time:J

    iget-wide v2, p0, Landroid/net/wifi/pppoe/PppoeInfo;->start_time:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Landroid/net/wifi/pppoe/PppoeInfo;->online_time:J

    .line 44
    const-string v0, "PppoeInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "update PPPoE onlne time:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/net/wifi/pppoe/PppoeInfo;->online_time:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    return-void
.end method

.method public updatePppoeOnlineTime(Z)V
    .locals 4
    .parameter "isStart"

    .prologue
    .line 48
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p0, Landroid/net/wifi/pppoe/PppoeInfo;->current_time:J

    .line 49
    const/4 v0, 0x1

    if-ne v0, p1, :cond_0

    .line 50
    iget-wide v0, p0, Landroid/net/wifi/pppoe/PppoeInfo;->current_time:J

    iput-wide v0, p0, Landroid/net/wifi/pppoe/PppoeInfo;->start_time:J

    .line 51
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/net/wifi/pppoe/PppoeInfo;->online_time:J

    .line 56
    :goto_0
    return-void

    .line 53
    :cond_0
    invoke-virtual {p0}, Landroid/net/wifi/pppoe/PppoeInfo;->updatePppoeOnlineTime()V

    .line 54
    const-string v0, "PppoeInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "start PPPoE onlne time:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/net/wifi/pppoe/PppoeInfo;->online_time:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public updatePppoeStatus(Ljava/lang/String;)V
    .locals 3
    .parameter "pppoeState"

    .prologue
    .line 59
    const-string v0, "PppoeInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "update PPPoE status:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/pppoe/PppoeInfo;->status:Landroid/net/wifi/pppoe/PppoeInfo$Status;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    const-string v0, "PPPOE_STATE_CONNECTING"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    sget-object v0, Landroid/net/wifi/pppoe/PppoeInfo$Status;->CONNECTING:Landroid/net/wifi/pppoe/PppoeInfo$Status;

    iput-object v0, p0, Landroid/net/wifi/pppoe/PppoeInfo;->status:Landroid/net/wifi/pppoe/PppoeInfo$Status;

    .line 67
    :goto_0
    return-void

    .line 62
    :cond_0
    const-string v0, "PPPOE_STATE_CONNECTING"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 63
    sget-object v0, Landroid/net/wifi/pppoe/PppoeInfo$Status;->ONLINE:Landroid/net/wifi/pppoe/PppoeInfo$Status;

    iput-object v0, p0, Landroid/net/wifi/pppoe/PppoeInfo;->status:Landroid/net/wifi/pppoe/PppoeInfo$Status;

    goto :goto_0

    .line 65
    :cond_1
    sget-object v0, Landroid/net/wifi/pppoe/PppoeInfo$Status;->OFFLINE:Landroid/net/wifi/pppoe/PppoeInfo$Status;

    iput-object v0, p0, Landroid/net/wifi/pppoe/PppoeInfo;->status:Landroid/net/wifi/pppoe/PppoeInfo$Status;

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 78
    iget-object v0, p0, Landroid/net/wifi/pppoe/PppoeInfo;->status:Landroid/net/wifi/pppoe/PppoeInfo$Status;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 79
    iget-wide v0, p0, Landroid/net/wifi/pppoe/PppoeInfo;->online_time:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 80
    return-void
.end method
