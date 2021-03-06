.class public Lcom/android/gallery3d/photoeditor/actions/FlipAction;
.super Lcom/android/gallery3d/photoeditor/actions/EffectAction;
.source "SourceFile"


# static fields
.field private static final jL:F = 0.0f

.field private static final jM:F = 180.0f


# instance fields
.field private jN:Lcom/android/gallery3d/photoeditor/filters/FlipFilter;

.field private jO:F

.field private jP:F

.field private jQ:Ljava/lang/Runnable;

.field private jR:Lcom/android/gallery3d/photoeditor/actions/FlipView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/photoeditor/actions/EffectAction;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    return-void
.end method

.method static synthetic a(Lcom/android/gallery3d/photoeditor/actions/FlipAction;F)F
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 29
    iput p1, p0, Lcom/android/gallery3d/photoeditor/actions/FlipAction;->jO:F

    return p1
.end method

.method static synthetic a(Lcom/android/gallery3d/photoeditor/actions/FlipAction;)Lcom/android/gallery3d/photoeditor/actions/FlipView;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/FlipAction;->jR:Lcom/android/gallery3d/photoeditor/actions/FlipView;

    return-object v0
.end method

.method static synthetic a(Lcom/android/gallery3d/photoeditor/actions/FlipAction;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 29
    iput-object p1, p0, Lcom/android/gallery3d/photoeditor/actions/FlipAction;->jQ:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic a(Lcom/android/gallery3d/photoeditor/actions/FlipAction;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/android/gallery3d/photoeditor/actions/FlipAction;->f(Z)V

    return-void
.end method

.method static synthetic b(Lcom/android/gallery3d/photoeditor/actions/FlipAction;F)F
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 29
    iput p1, p0, Lcom/android/gallery3d/photoeditor/actions/FlipAction;->jP:F

    return p1
.end method

.method static synthetic b(Lcom/android/gallery3d/photoeditor/actions/FlipAction;)V
    .locals 0
    .parameter

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/android/gallery3d/photoeditor/actions/FlipAction;->ca()V

    return-void
.end method

.method static synthetic c(Lcom/android/gallery3d/photoeditor/actions/FlipAction;)F
    .locals 1
    .parameter

    .prologue
    .line 29
    iget v0, p0, Lcom/android/gallery3d/photoeditor/actions/FlipAction;->jO:F

    return v0
.end method

.method private ca()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/high16 v1, 0x4334

    .line 114
    iget v0, p0, Lcom/android/gallery3d/photoeditor/actions/FlipAction;->jO:F

    rem-float/2addr v0, v1

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_0

    .line 115
    iget v0, p0, Lcom/android/gallery3d/photoeditor/actions/FlipAction;->jO:F

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    mul-int/lit16 v0, v0, 0xb4

    int-to-float v0, v0

    iput v0, p0, Lcom/android/gallery3d/photoeditor/actions/FlipAction;->jO:F

    .line 117
    :cond_0
    iget v0, p0, Lcom/android/gallery3d/photoeditor/actions/FlipAction;->jP:F

    rem-float/2addr v0, v1

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_1

    .line 118
    iget v0, p0, Lcom/android/gallery3d/photoeditor/actions/FlipAction;->jP:F

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    mul-int/lit16 v0, v0, 0xb4

    int-to-float v0, v0

    iput v0, p0, Lcom/android/gallery3d/photoeditor/actions/FlipAction;->jP:F

    .line 120
    :cond_1
    return-void
.end method

.method static synthetic d(Lcom/android/gallery3d/photoeditor/actions/FlipAction;)F
    .locals 1
    .parameter

    .prologue
    .line 29
    iget v0, p0, Lcom/android/gallery3d/photoeditor/actions/FlipAction;->jP:F

    return v0
.end method

.method static synthetic e(Lcom/android/gallery3d/photoeditor/actions/FlipAction;)Ljava/lang/Runnable;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/FlipAction;->jQ:Ljava/lang/Runnable;

    return-object v0
.end method

.method private f(Z)V
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 124
    iget-object v3, p0, Lcom/android/gallery3d/photoeditor/actions/FlipAction;->jN:Lcom/android/gallery3d/photoeditor/filters/FlipFilter;

    iget v0, p0, Lcom/android/gallery3d/photoeditor/actions/FlipAction;->jO:F

    float-to-int v0, v0

    div-int/lit16 v0, v0, 0xb4

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iget v4, p0, Lcom/android/gallery3d/photoeditor/actions/FlipAction;->jP:F

    float-to-int v4, v4

    div-int/lit16 v4, v4, 0xb4

    rem-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_1

    :goto_1
    invoke-virtual {v3, v0, v1}, Lcom/android/gallery3d/photoeditor/filters/FlipFilter;->c(ZZ)V

    .line 126
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/FlipAction;->jN:Lcom/android/gallery3d/photoeditor/filters/FlipFilter;

    invoke-virtual {p0, v0, p1}, Lcom/android/gallery3d/photoeditor/actions/FlipAction;->a(Lcom/android/gallery3d/photoeditor/filters/Filter;Z)V

    .line 127
    return-void

    :cond_0
    move v0, v2

    .line 124
    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method


# virtual methods
.method public A()V
    .locals 2

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/FlipAction;->jR:Lcom/android/gallery3d/photoeditor/actions/FlipView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/photoeditor/actions/FlipView;->a(Lcom/android/gallery3d/photoeditor/actions/x;)V

    .line 106
    invoke-direct {p0}, Lcom/android/gallery3d/photoeditor/actions/FlipAction;->ca()V

    .line 107
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/gallery3d/photoeditor/actions/FlipAction;->f(Z)V

    .line 108
    return-void
.end method

.method public z()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 46
    new-instance v0, Lcom/android/gallery3d/photoeditor/filters/FlipFilter;

    invoke-direct {v0}, Lcom/android/gallery3d/photoeditor/filters/FlipFilter;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/FlipAction;->jN:Lcom/android/gallery3d/photoeditor/filters/FlipFilter;

    .line 48
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/EffectAction;->az:Lcom/android/gallery3d/photoeditor/actions/EffectToolFactory;

    invoke-virtual {v0}, Lcom/android/gallery3d/photoeditor/actions/EffectToolFactory;->ft()Lcom/android/gallery3d/photoeditor/actions/FlipView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/FlipAction;->jR:Lcom/android/gallery3d/photoeditor/actions/FlipView;

    .line 49
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/FlipAction;->jR:Lcom/android/gallery3d/photoeditor/actions/FlipView;

    new-instance v1, Lcom/android/gallery3d/photoeditor/actions/l;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/photoeditor/actions/l;-><init>(Lcom/android/gallery3d/photoeditor/actions/FlipAction;)V

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/photoeditor/actions/FlipView;->a(Lcom/android/gallery3d/photoeditor/actions/x;)V

    .line 95
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/FlipAction;->jR:Lcom/android/gallery3d/photoeditor/actions/FlipView;

    invoke-virtual {v0, v2, v2}, Lcom/android/gallery3d/photoeditor/actions/FlipView;->m(FF)V

    .line 96
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/FlipAction;->jR:Lcom/android/gallery3d/photoeditor/actions/FlipView;

    const/high16 v1, 0x4334

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/photoeditor/actions/FlipView;->w(F)V

    .line 97
    iput v2, p0, Lcom/android/gallery3d/photoeditor/actions/FlipAction;->jO:F

    .line 98
    iput v2, p0, Lcom/android/gallery3d/photoeditor/actions/FlipAction;->jP:F

    .line 99
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/FlipAction;->jQ:Ljava/lang/Runnable;

    .line 100
    return-void
.end method
