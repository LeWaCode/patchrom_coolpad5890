.class Lcom/android/internal/policy/impl/FangdaoUnlockScreen$12;
.super Ljava/lang/Object;
.source "FangdaoUnlockScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/FangdaoUnlockScreen;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Lcom/android/internal/widget/LockPatternUtils;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/FangdaoUnlockScreen;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/FangdaoUnlockScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 281
    iput-object p1, p0, Lcom/android/internal/policy/impl/FangdaoUnlockScreen$12;->this$0:Lcom/android/internal/policy/impl/FangdaoUnlockScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 285
    iget-object v0, p0, Lcom/android/internal/policy/impl/FangdaoUnlockScreen$12;->this$0:Lcom/android/internal/policy/impl/FangdaoUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/FangdaoUnlockScreen;->mPassword:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/FangdaoUnlockScreen;->access$200(Lcom/android/internal/policy/impl/FangdaoUnlockScreen;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 287
    return-void
.end method
