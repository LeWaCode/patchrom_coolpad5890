.class Lcom/android/server/RunningServiceState$AppProcessInfo;
.super Ljava/lang/Object;
.source "RunningServiceState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/RunningServiceState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AppProcessInfo"
.end annotation


# instance fields
.field hasForegroundServices:Z

.field hasServices:Z

.field final info:Landroid/app/ActivityManager$RunningAppProcessInfo;


# direct methods
.method constructor <init>(Landroid/app/ActivityManager$RunningAppProcessInfo;)V
    .locals 0
    .parameter "_info"

    .prologue
    .line 109
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 110
    iput-object p1, p0, Lcom/android/server/RunningServiceState$AppProcessInfo;->info:Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 111
    return-void
.end method
