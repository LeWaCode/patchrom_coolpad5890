.class Lcom/android/internal/telephony/gsm/GsmCallTracker$DialInfo;
.super Ljava/lang/Object;
.source "GsmCallTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/GsmCallTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DialInfo"
.end annotation


# instance fields
.field address:Ljava/lang/String;

.field clirMode:I

.field result:Landroid/os/Message;

.field final synthetic this$0:Lcom/android/internal/telephony/gsm/GsmCallTracker;

.field uusInfo:Lcom/android/internal/telephony/UUSInfo;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/gsm/GsmCallTracker;Ljava/lang/String;ILandroid/os/Message;)V
    .locals 1
    .parameter
    .parameter "address"
    .parameter "clirMode"
    .parameter "result"

    .prologue
    .line 1784
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker$DialInfo;->this$0:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1785
    iput-object p2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker$DialInfo;->address:Ljava/lang/String;

    .line 1786
    iput p3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker$DialInfo;->clirMode:I

    .line 1787
    iput-object p4, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker$DialInfo;->result:Landroid/os/Message;

    .line 1788
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker$DialInfo;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    .line 1789
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/gsm/GsmCallTracker;Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;Landroid/os/Message;)V
    .locals 0
    .parameter
    .parameter "address"
    .parameter "clirMode"
    .parameter "uusInfo"
    .parameter "result"

    .prologue
    .line 1790
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker$DialInfo;->this$0:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1791
    iput-object p2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker$DialInfo;->address:Ljava/lang/String;

    .line 1792
    iput p3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker$DialInfo;->clirMode:I

    .line 1793
    iput-object p4, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker$DialInfo;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    .line 1794
    iput-object p5, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker$DialInfo;->result:Landroid/os/Message;

    .line 1795
    return-void
.end method
