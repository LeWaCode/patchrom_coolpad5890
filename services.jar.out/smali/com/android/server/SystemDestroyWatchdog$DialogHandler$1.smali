.class Lcom/android/server/SystemDestroyWatchdog$DialogHandler$1;
.super Ljava/lang/Object;
.source "SystemDestroyWatchdog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/SystemDestroyWatchdog$DialogHandler;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/SystemDestroyWatchdog$DialogHandler;


# direct methods
.method constructor <init>(Lcom/android/server/SystemDestroyWatchdog$DialogHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 333
    iput-object p1, p0, Lcom/android/server/SystemDestroyWatchdog$DialogHandler$1;->this$1:Lcom/android/server/SystemDestroyWatchdog$DialogHandler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 337
    return-void
.end method
