.class Lcom/android/internal/policy/impl/LockScreen$3;
.super Ljava/lang/Object;
.source "LockScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/LockScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/LockScreen;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/LockScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 798
    iput-object p1, p0, Lcom/android/internal/policy/impl/LockScreen$3;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 800
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen$3;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mLockScreenSurfaceData:Lcom/android/internal/policy/impl/LockScreenDataInfo;
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockScreen;->access$000(Lcom/android/internal/policy/impl/LockScreen;)Lcom/android/internal/policy/impl/LockScreenDataInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/LockScreenDataInfo;->unlockWidgetCommonMethodsPing()V

    .line 801
    return-void
.end method
