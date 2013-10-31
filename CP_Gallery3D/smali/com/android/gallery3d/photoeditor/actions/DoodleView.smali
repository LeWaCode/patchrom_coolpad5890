.class Lcom/android/gallery3d/photoeditor/actions/DoodleView;
.super Lcom/android/gallery3d/photoeditor/actions/FullscreenToolView;
.source "SourceFile"


# instance fields
.field private bitmap:Landroid/graphics/Bitmap;

.field private color:I

.field private final nA:Landroid/graphics/Paint;

.field private final nB:Landroid/graphics/PointF;

.field private final nC:Landroid/graphics/Path;

.field private final nD:Landroid/graphics/Matrix;

.field private final nE:Landroid/graphics/Matrix;

.field private nF:Landroid/graphics/Canvas;

.field private nG:Lcom/android/gallery3d/photoeditor/actions/Doodle;

.field private nH:Lcom/android/gallery3d/photoeditor/actions/h;

.field private final nz:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/photoeditor/actions/FullscreenToolView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->nz:Landroid/graphics/Paint;

    .line 46
    invoke-static {}, Lcom/android/gallery3d/photoeditor/actions/Doodle;->aX()Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->nA:Landroid/graphics/Paint;

    .line 47
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->nB:Landroid/graphics/PointF;

    .line 48
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->nC:Landroid/graphics/Path;

    .line 49
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->nD:Landroid/graphics/Matrix;

    .line 50
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->nE:Landroid/graphics/Matrix;

    .line 60
    return-void
.end method

.method private a(Landroid/graphics/Canvas;)V
    .locals 3
    .parameter

    .prologue
    .line 83
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->nG:Lcom/android/gallery3d/photoeditor/actions/Doodle;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->nA:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->nG:Lcom/android/gallery3d/photoeditor/actions/Doodle;

    invoke-virtual {v1}, Lcom/android/gallery3d/photoeditor/actions/Doodle;->getColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 85
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->nG:Lcom/android/gallery3d/photoeditor/actions/Doodle;

    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->nD:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->nC:Landroid/graphics/Path;

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/photoeditor/actions/Doodle;->a(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    .line 86
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->nC:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->nA:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 88
    :cond_0
    return-void
.end method

.method private cY()V
    .locals 5

    .prologue
    .line 98
    new-instance v0, Lcom/android/gallery3d/photoeditor/actions/Doodle;

    iget v1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->color:I

    new-instance v2, Landroid/graphics/PointF;

    iget-object v3, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->nB:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    iget-object v4, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->nB:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    invoke-direct {v2, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-direct {v0, v1, v2}, Lcom/android/gallery3d/photoeditor/actions/Doodle;-><init>(ILandroid/graphics/PointF;)V

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->nG:Lcom/android/gallery3d/photoeditor/actions/Doodle;

    .line 99
    return-void
.end method

.method private cZ()V
    .locals 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->nG:Lcom/android/gallery3d/photoeditor/actions/Doodle;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->nG:Lcom/android/gallery3d/photoeditor/actions/Doodle;

    invoke-virtual {v0}, Lcom/android/gallery3d/photoeditor/actions/Doodle;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 104
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->nF:Landroid/graphics/Canvas;

    invoke-direct {p0, v0}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->a(Landroid/graphics/Canvas;)V

    .line 105
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->nH:Lcom/android/gallery3d/photoeditor/actions/h;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->nH:Lcom/android/gallery3d/photoeditor/actions/h;

    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->nG:Lcom/android/gallery3d/photoeditor/actions/Doodle;

    invoke-interface {v0, v1}, Lcom/android/gallery3d/photoeditor/actions/h;->a(Lcom/android/gallery3d/photoeditor/actions/Doodle;)V

    .line 108
    :cond_0
    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->invalidate()V

    .line 110
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->nG:Lcom/android/gallery3d/photoeditor/actions/Doodle;

    .line 111
    return-void
.end method

.method private da()V
    .locals 4

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->nG:Lcom/android/gallery3d/photoeditor/actions/Doodle;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->nG:Lcom/android/gallery3d/photoeditor/actions/Doodle;

    new-instance v1, Landroid/graphics/PointF;

    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->nB:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget-object v3, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->nB:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-direct {v1, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/photoeditor/actions/Doodle;->c(Landroid/graphics/PointF;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 115
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->nH:Lcom/android/gallery3d/photoeditor/actions/h;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->nH:Lcom/android/gallery3d/photoeditor/actions/h;

    invoke-interface {v0}, Lcom/android/gallery3d/photoeditor/actions/h;->aY()V

    .line 118
    :cond_0
    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->invalidate()V

    .line 120
    :cond_1
    return-void
.end method


# virtual methods
.method public a(Lcom/android/gallery3d/photoeditor/actions/h;)V
    .locals 0
    .parameter

    .prologue
    .line 63
    iput-object p1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->nH:Lcom/android/gallery3d/photoeditor/actions/h;

    .line 64
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 155
    invoke-super {p0, p1}, Lcom/android/gallery3d/photoeditor/actions/FullscreenToolView;->onDraw(Landroid/graphics/Canvas;)V

    .line 157
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 158
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/FullscreenToolView;->pQ:Landroid/graphics/RectF;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    .line 159
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->nE:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 160
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->bitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->nz:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 163
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->a(Landroid/graphics/Canvas;)V

    .line 164
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 165
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/high16 v5, 0x3f80

    const/4 v4, 0x0

    .line 68
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/gallery3d/photoeditor/actions/FullscreenToolView;->onSizeChanged(IIII)V

    .line 70
    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->do()F

    move-result v1

    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->dp()F

    move-result v2

    invoke-direct {v0, v4, v4, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 71
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->bitmap:Landroid/graphics/Bitmap;

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 72
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v2

    float-to-int v2, v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->bitmap:Landroid/graphics/Bitmap;

    .line 74
    new-instance v1, Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->bitmap:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->nF:Landroid/graphics/Canvas;

    .line 77
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->nD:Landroid/graphics/Matrix;

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2, v4, v4, v5, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    sget-object v3, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v1, v2, v0, v3}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 79
    :cond_0
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->nE:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/actions/FullscreenToolView;->pQ:Landroid/graphics/RectF;

    sget-object v3, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v1, v0, v2, v3}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 80
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter

    .prologue
    const/high16 v3, 0x3f80

    .line 124
    invoke-super {p0, p1}, Lcom/android/gallery3d/photoeditor/actions/FullscreenToolView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 126
    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 128
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 130
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 150
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 132
    :pswitch_0
    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->nB:Landroid/graphics/PointF;

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->a(FFLandroid/graphics/PointF;)V

    .line 133
    invoke-direct {p0}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->cY()V

    goto :goto_0

    .line 137
    :pswitch_1
    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->nB:Landroid/graphics/PointF;

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->a(FFLandroid/graphics/PointF;)V

    .line 138
    invoke-direct {p0}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->da()V

    goto :goto_0

    .line 144
    :pswitch_2
    add-float/2addr v0, v3

    add-float/2addr v1, v3

    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->nB:Landroid/graphics/PointF;

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->a(FFLandroid/graphics/PointF;)V

    .line 145
    invoke-direct {p0}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->da()V

    .line 146
    invoke-direct {p0}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->cZ()V

    goto :goto_0

    .line 130
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setColor(I)V
    .locals 0
    .parameter

    .prologue
    .line 92
    iput p1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->color:I

    .line 93
    invoke-direct {p0}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->cZ()V

    .line 94
    invoke-direct {p0}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->cY()V

    .line 95
    return-void
.end method
