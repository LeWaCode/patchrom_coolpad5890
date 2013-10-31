.class Landroid/widget/Editor$ActionPopupWindow;
.super Landroid/widget/Editor$PinnedPopupWindow;
.source "Editor.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActionPopupWindow"
.end annotation


# static fields
.field private static final POPUP_TEXT_LAYOUT:I = 0x10900b4


# instance fields
.field private mClipBoardTextView:Landroid/widget/TextView;

.field private mInputMethodTextView:Landroid/widget/TextView;

.field private mPasteTextView:Landroid/widget/TextView;

.field private mReplaceTextView:Landroid/widget/TextView;

.field private mSelectionTextView:Landroid/widget/TextView;

.field final synthetic this$0:Landroid/widget/Editor;


# direct methods
.method private constructor <init>(Landroid/widget/Editor;)V
    .locals 0
    .parameter

    .prologue
    .line 3075
    iput-object p1, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-direct {p0, p1}, Landroid/widget/Editor$PinnedPopupWindow;-><init>(Landroid/widget/Editor;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/Editor;Landroid/widget/Editor$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3075
    invoke-direct {p0, p1}, Landroid/widget/Editor$ActionPopupWindow;-><init>(Landroid/widget/Editor;)V

    return-void
.end method


# virtual methods
.method protected clipVertically(I)I
    .locals 6
    .parameter "positionY"

    .prologue
    .line 3248
    if-gez p1, :cond_0

    .line 3249
    invoke-virtual {p0}, Landroid/widget/Editor$ActionPopupWindow;->getTextOffset()I

    move-result v3

    .line 3250
    .local v3, offset:I
    iget-object v4, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v4}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    .line 3251
    .local v1, layout:Landroid/text/Layout;
    invoke-virtual {v1, v3}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v2

    .line 3252
    .local v2, line:I
    invoke-virtual {v1, v2}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v4

    invoke-virtual {v1, v2}, Landroid/text/Layout;->getLineTop(I)I

    move-result v5

    sub-int/2addr v4, v5

    add-int/2addr p1, v4

    .line 3253
    iget-object v4, p0, Landroid/widget/Editor$PinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v4

    add-int/2addr p1, v4

    .line 3256
    iget-object v4, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v4}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v5, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v5}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v5

    iget v5, v5, Landroid/widget/TextView;->mTextSelectHandleRes:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 3258
    .local v0, handle:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    add-int/2addr p1, v4

    .line 3261
    .end local v0           #handle:Landroid/graphics/drawable/Drawable;
    .end local v1           #layout:Landroid/text/Layout;
    .end local v2           #line:I
    .end local v3           #offset:I
    :cond_0
    return p1
.end method

.method protected createPopupWindow()V
    .locals 4

    .prologue
    .line 3088
    new-instance v0, Landroid/widget/PopupWindow;

    iget-object v1, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const v3, 0x10102c8

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Landroid/widget/Editor$PinnedPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 3090
    iget-object v0, p0, Landroid/widget/Editor$PinnedPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 3091
    return-void
.end method

.method protected getTextOffset()I
    .locals 2

    .prologue
    .line 3238
    iget-object v0, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    iget-object v1, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method protected getVerticalLocalPosition(I)I
    .locals 2
    .parameter "line"

    .prologue
    .line 3243
    iget-object v0, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    iget-object v1, p0, Landroid/widget/Editor$PinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method protected initContentView()V
    .locals 13

    .prologue
    .line 3095
    new-instance v3, Landroid/widget/LinearLayout;

    iget-object v10, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v10}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v3, v10}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 3096
    .local v3, linearLayout:Landroid/widget/LinearLayout;
    const/4 v10, 0x0

    invoke-virtual {v3, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 3097
    iput-object v3, p0, Landroid/widget/Editor$PinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    .line 3098
    iget-object v10, p0, Landroid/widget/Editor$PinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    const v11, 0x10805ad

    invoke-virtual {v10, v11}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 3101
    iget-object v10, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v10}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v10

    const-string/jumbo v11, "layout_inflater"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 3104
    .local v1, inflater:Landroid/view/LayoutInflater;
    new-instance v9, Landroid/view/ViewGroup$LayoutParams;

    const/4 v10, -0x2

    const/4 v11, -0x2

    invoke-direct {v9, v10, v11}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 3108
    .local v9, wrapContent:Landroid/view/ViewGroup$LayoutParams;
    new-instance v5, Landroid/util/TypedValue;

    invoke-direct {v5}, Landroid/util/TypedValue;-><init>()V

    .line 3109
    .local v5, outValue:Landroid/util/TypedValue;
    iget-object v10, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v10}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v10

    const v11, 0x101030e

    const/4 v12, 0x1

    invoke-virtual {v10, v11, v5, v12}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 3111
    iget v6, v5, Landroid/util/TypedValue;->resourceId:I

    .line 3112
    .local v6, resid:I
    iget-object v10, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v10}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    .line 3113
    .local v4, metrics:Landroid/util/DisplayMetrics;
    const/4 v10, 0x1

    const/high16 v11, 0x4140

    invoke-static {v10, v11, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v10

    float-to-int v2, v10

    .line 3115
    .local v2, left:I
    const/4 v10, 0x1

    const/high16 v11, 0x4100

    invoke-static {v10, v11, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v10

    float-to-int v8, v10

    .line 3117
    .local v8, top:I
    const/4 v10, 0x1

    const/high16 v11, 0x4140

    invoke-static {v10, v11, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v10

    float-to-int v7, v10

    .line 3119
    .local v7, right:I
    const/4 v10, 0x1

    const/high16 v11, 0x4100

    invoke-static {v10, v11, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v10

    float-to-int v0, v10

    .line 3123
    .local v0, bottom:I
    const v10, 0x10900b4

    const/4 v11, 0x0

    invoke-virtual {v1, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, p0, Landroid/widget/Editor$ActionPopupWindow;->mPasteTextView:Landroid/widget/TextView;

    .line 3125
    iget-object v10, p0, Landroid/widget/Editor$ActionPopupWindow;->mPasteTextView:Landroid/widget/TextView;

    invoke-virtual {v10, v6}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 3126
    iget-object v10, p0, Landroid/widget/Editor$ActionPopupWindow;->mPasteTextView:Landroid/widget/TextView;

    invoke-virtual {v10, v2, v8, v7, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 3128
    iget-object v10, p0, Landroid/widget/Editor$ActionPopupWindow;->mPasteTextView:Landroid/widget/TextView;

    invoke-virtual {v10, v9}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3129
    iget-object v10, p0, Landroid/widget/Editor$PinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    iget-object v11, p0, Landroid/widget/Editor$ActionPopupWindow;->mPasteTextView:Landroid/widget/TextView;

    invoke-virtual {v10, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 3130
    iget-object v10, p0, Landroid/widget/Editor$ActionPopupWindow;->mPasteTextView:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->setSingleLine()V

    .line 3131
    iget-object v10, p0, Landroid/widget/Editor$ActionPopupWindow;->mPasteTextView:Landroid/widget/TextView;

    const v11, 0x104000b

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(I)V

    .line 3132
    iget-object v10, p0, Landroid/widget/Editor$ActionPopupWindow;->mPasteTextView:Landroid/widget/TextView;

    invoke-virtual {v10, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3134
    const v10, 0x10900b4

    const/4 v11, 0x0

    invoke-virtual {v1, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, p0, Landroid/widget/Editor$ActionPopupWindow;->mSelectionTextView:Landroid/widget/TextView;

    .line 3135
    iget-object v10, p0, Landroid/widget/Editor$ActionPopupWindow;->mSelectionTextView:Landroid/widget/TextView;

    invoke-virtual {v10, v6}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 3136
    iget-object v10, p0, Landroid/widget/Editor$ActionPopupWindow;->mSelectionTextView:Landroid/widget/TextView;

    invoke-virtual {v10, v2, v8, v7, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 3137
    iget-object v10, p0, Landroid/widget/Editor$ActionPopupWindow;->mSelectionTextView:Landroid/widget/TextView;

    invoke-virtual {v10, v9}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3138
    iget-object v10, p0, Landroid/widget/Editor$PinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    iget-object v11, p0, Landroid/widget/Editor$ActionPopupWindow;->mSelectionTextView:Landroid/widget/TextView;

    invoke-virtual {v10, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 3139
    iget-object v10, p0, Landroid/widget/Editor$ActionPopupWindow;->mSelectionTextView:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->setSingleLine()V

    .line 3140
    iget-object v10, p0, Landroid/widget/Editor$ActionPopupWindow;->mSelectionTextView:Landroid/widget/TextView;

    const v11, 0x1040529

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(I)V

    .line 3141
    iget-object v10, p0, Landroid/widget/Editor$ActionPopupWindow;->mSelectionTextView:Landroid/widget/TextView;

    invoke-virtual {v10, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3144
    const v10, 0x10900b4

    const/4 v11, 0x0

    invoke-virtual {v1, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, p0, Landroid/widget/Editor$ActionPopupWindow;->mClipBoardTextView:Landroid/widget/TextView;

    .line 3145
    iget-object v10, p0, Landroid/widget/Editor$ActionPopupWindow;->mClipBoardTextView:Landroid/widget/TextView;

    invoke-virtual {v10, v6}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 3146
    iget-object v10, p0, Landroid/widget/Editor$ActionPopupWindow;->mClipBoardTextView:Landroid/widget/TextView;

    invoke-virtual {v10, v2, v8, v7, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 3147
    iget-object v10, p0, Landroid/widget/Editor$ActionPopupWindow;->mClipBoardTextView:Landroid/widget/TextView;

    invoke-virtual {v10, v9}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3148
    iget-object v10, p0, Landroid/widget/Editor$PinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    iget-object v11, p0, Landroid/widget/Editor$ActionPopupWindow;->mClipBoardTextView:Landroid/widget/TextView;

    invoke-virtual {v10, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 3149
    iget-object v10, p0, Landroid/widget/Editor$ActionPopupWindow;->mClipBoardTextView:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->setSingleLine()V

    .line 3150
    iget-object v10, p0, Landroid/widget/Editor$ActionPopupWindow;->mClipBoardTextView:Landroid/widget/TextView;

    const v11, 0x1040528

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(I)V

    .line 3151
    iget-object v10, p0, Landroid/widget/Editor$ActionPopupWindow;->mClipBoardTextView:Landroid/widget/TextView;

    invoke-virtual {v10, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3154
    const v10, 0x10900b4

    const/4 v11, 0x0

    invoke-virtual {v1, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, p0, Landroid/widget/Editor$ActionPopupWindow;->mReplaceTextView:Landroid/widget/TextView;

    .line 3156
    iget-object v10, p0, Landroid/widget/Editor$ActionPopupWindow;->mReplaceTextView:Landroid/widget/TextView;

    invoke-virtual {v10, v6}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 3157
    iget-object v10, p0, Landroid/widget/Editor$ActionPopupWindow;->mReplaceTextView:Landroid/widget/TextView;

    invoke-virtual {v10, v2, v8, v7, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 3159
    iget-object v10, p0, Landroid/widget/Editor$ActionPopupWindow;->mReplaceTextView:Landroid/widget/TextView;

    invoke-virtual {v10, v9}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3160
    iget-object v10, p0, Landroid/widget/Editor$PinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    iget-object v11, p0, Landroid/widget/Editor$ActionPopupWindow;->mReplaceTextView:Landroid/widget/TextView;

    invoke-virtual {v10, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 3161
    iget-object v10, p0, Landroid/widget/Editor$ActionPopupWindow;->mReplaceTextView:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->setSingleLine()V

    .line 3162
    iget-object v10, p0, Landroid/widget/Editor$ActionPopupWindow;->mReplaceTextView:Landroid/widget/TextView;

    const v11, 0x10403bd

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(I)V

    .line 3163
    iget-object v10, p0, Landroid/widget/Editor$ActionPopupWindow;->mReplaceTextView:Landroid/widget/TextView;

    invoke-virtual {v10, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3166
    const v10, 0x10900b4

    const/4 v11, 0x0

    invoke-virtual {v1, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, p0, Landroid/widget/Editor$ActionPopupWindow;->mInputMethodTextView:Landroid/widget/TextView;

    .line 3167
    iget-object v10, p0, Landroid/widget/Editor$ActionPopupWindow;->mInputMethodTextView:Landroid/widget/TextView;

    invoke-virtual {v10, v6}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 3168
    iget-object v10, p0, Landroid/widget/Editor$ActionPopupWindow;->mInputMethodTextView:Landroid/widget/TextView;

    invoke-virtual {v10, v2, v8, v7, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 3169
    iget-object v10, p0, Landroid/widget/Editor$ActionPopupWindow;->mInputMethodTextView:Landroid/widget/TextView;

    invoke-virtual {v10, v9}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3170
    iget-object v10, p0, Landroid/widget/Editor$PinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    iget-object v11, p0, Landroid/widget/Editor$ActionPopupWindow;->mInputMethodTextView:Landroid/widget/TextView;

    invoke-virtual {v10, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 3171
    iget-object v10, p0, Landroid/widget/Editor$ActionPopupWindow;->mInputMethodTextView:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->setSingleLine()V

    .line 3172
    iget-object v10, p0, Landroid/widget/Editor$ActionPopupWindow;->mInputMethodTextView:Landroid/widget/TextView;

    const v11, 0x10403c2

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(I)V

    .line 3173
    iget-object v10, p0, Landroid/widget/Editor$ActionPopupWindow;->mInputMethodTextView:Landroid/widget/TextView;

    invoke-virtual {v10, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3175
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 3212
    iget-object v1, p0, Landroid/widget/Editor$ActionPopupWindow;->mPasteTextView:Landroid/widget/TextView;

    if-ne p1, v1, :cond_1

    iget-object v1, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->canPaste()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3213
    iget-object v1, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x1020022

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    .line 3214
    invoke-virtual {p0}, Landroid/widget/Editor$ActionPopupWindow;->hide()V

    .line 3234
    :cond_0
    :goto_0
    return-void

    .line 3215
    :cond_1
    iget-object v1, p0, Landroid/widget/Editor$ActionPopupWindow;->mReplaceTextView:Landroid/widget/TextView;

    if-ne p1, v1, :cond_2

    .line 3216
    iget-object v1, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    iget-object v2, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v2}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v2

    add-int/2addr v1, v2

    div-int/lit8 v0, v1, 0x2

    .line 3217
    .local v0, middle:I
    iget-object v1, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-virtual {v1}, Landroid/widget/Editor;->stopSelectionActionMode()V

    .line 3218
    iget-object v1, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Landroid/text/Spannable;

    invoke-static {v1, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 3219
    iget-object v1, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-virtual {v1}, Landroid/widget/Editor;->showSuggestions()V

    goto :goto_0

    .line 3221
    .end local v0           #middle:I
    :cond_2
    iget-object v1, p0, Landroid/widget/Editor$ActionPopupWindow;->mClipBoardTextView:Landroid/widget/TextView;

    if-ne p1, v1, :cond_3

    iget-object v1, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    iget-boolean v1, v1, Landroid/widget/TextView;->mUseYlSelectionMode:Z

    if-eqz v1, :cond_3

    .line 3222
    iget-object v1, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->showClipBoard()V

    .line 3223
    invoke-virtual {p0}, Landroid/widget/Editor$ActionPopupWindow;->hide()V

    goto :goto_0

    .line 3224
    :cond_3
    iget-object v1, p0, Landroid/widget/Editor$ActionPopupWindow;->mInputMethodTextView:Landroid/widget/TextView;

    if-ne p1, v1, :cond_5

    .line 3225
    iget-object v1, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    iget-boolean v1, v1, Landroid/widget/TextView;->mUseYlSelectionMode:Z

    if-eqz v1, :cond_4

    .line 3226
    iget-object v1, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->hideClipBoard()V

    .line 3228
    :cond_4
    iget-object v1, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->switchInputMethod()V

    .line 3229
    invoke-virtual {p0}, Landroid/widget/Editor$ActionPopupWindow;->hide()V

    goto :goto_0

    .line 3230
    :cond_5
    iget-object v1, p0, Landroid/widget/Editor$ActionPopupWindow;->mSelectionTextView:Landroid/widget/TextView;

    if-ne p1, v1, :cond_0

    .line 3231
    iget-object v1, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-virtual {v1}, Landroid/widget/Editor;->startSelectionActionMode()Z

    goto :goto_0
.end method

.method public show()V
    .locals 9

    .prologue
    const/4 v5, 0x1

    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 3179
    iget-object v8, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v8}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/TextView;->canPaste()Z

    move-result v0

    .line 3180
    .local v0, canPaste:Z
    iget-object v8, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v8}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/TextView;->isSuggestionsEnabled()Z

    move-result v8

    if-eqz v8, :cond_1

    iget-object v8, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    #calls: Landroid/widget/Editor;->isCursorInsideSuggestionSpan()Z
    invoke-static {v8}, Landroid/widget/Editor;->access$2100(Landroid/widget/Editor;)Z

    move-result v8

    if-eqz v8, :cond_1

    move v4, v5

    .line 3182
    .local v4, canSuggest:Z
    :goto_0
    iget-object v8, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v8}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/TextView;->textCanBeSelected()Z

    move-result v8

    if-eqz v8, :cond_2

    iget-object v8, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v8}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/TextView;->hasSelection()Z

    move-result v8

    if-nez v8, :cond_2

    iget-object v8, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v8}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v8

    iget-boolean v8, v8, Landroid/widget/TextView;->mNotStartSelectionMode:Z

    if-nez v8, :cond_2

    move v1, v5

    .line 3184
    .local v1, canSelectText:Z
    :goto_1
    if-eqz v1, :cond_3

    iget-object v8, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v8}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v8

    iget-boolean v8, v8, Landroid/widget/TextView;->mShowInputMethodActionPopup:Z

    if-eqz v8, :cond_3

    move v3, v5

    .line 3186
    .local v3, canShowInputMethod:Z
    :goto_2
    iget-object v8, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v8}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/TextView;->canPaste()Z

    move-result v8

    if-nez v8, :cond_0

    iget-object v8, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v8}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/TextView;->hasTextInClipboardList()Z

    move-result v8

    if-eqz v8, :cond_4

    :cond_0
    iget-object v8, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v8}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v8

    iget-boolean v8, v8, Landroid/widget/TextView;->mUseYlSelectionMode:Z

    if-eqz v8, :cond_4

    move v2, v5

    .line 3190
    .local v2, canShowClipBoard:Z
    :goto_3
    iget-object v8, p0, Landroid/widget/Editor$ActionPopupWindow;->mPasteTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    move v5, v6

    :goto_4
    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3191
    iget-object v8, p0, Landroid/widget/Editor$ActionPopupWindow;->mSelectionTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_6

    move v5, v6

    :goto_5
    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3192
    iget-object v8, p0, Landroid/widget/Editor$ActionPopupWindow;->mReplaceTextView:Landroid/widget/TextView;

    if-eqz v4, :cond_7

    move v5, v6

    :goto_6
    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3195
    iget-object v8, p0, Landroid/widget/Editor$ActionPopupWindow;->mClipBoardTextView:Landroid/widget/TextView;

    if-eqz v2, :cond_8

    move v5, v6

    :goto_7
    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3196
    iget-object v8, p0, Landroid/widget/Editor$ActionPopupWindow;->mInputMethodTextView:Landroid/widget/TextView;

    if-eqz v3, :cond_9

    move v5, v6

    :goto_8
    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3199
    if-nez v0, :cond_a

    if-nez v4, :cond_a

    if-nez v2, :cond_a

    if-nez v3, :cond_a

    .line 3201
    iget-object v5, p0, Landroid/widget/Editor$PinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v5, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 3208
    :goto_9
    return-void

    .end local v1           #canSelectText:Z
    .end local v2           #canShowClipBoard:Z
    .end local v3           #canShowInputMethod:Z
    .end local v4           #canSuggest:Z
    :cond_1
    move v4, v6

    .line 3180
    goto/16 :goto_0

    .restart local v4       #canSuggest:Z
    :cond_2
    move v1, v6

    .line 3182
    goto :goto_1

    .restart local v1       #canSelectText:Z
    :cond_3
    move v3, v6

    .line 3184
    goto :goto_2

    .restart local v3       #canShowInputMethod:Z
    :cond_4
    move v2, v6

    .line 3186
    goto :goto_3

    .restart local v2       #canShowClipBoard:Z
    :cond_5
    move v5, v7

    .line 3190
    goto :goto_4

    :cond_6
    move v5, v7

    .line 3191
    goto :goto_5

    :cond_7
    move v5, v7

    .line 3192
    goto :goto_6

    :cond_8
    move v5, v7

    .line 3195
    goto :goto_7

    :cond_9
    move v5, v7

    .line 3196
    goto :goto_8

    .line 3204
    :cond_a
    iget-object v5, p0, Landroid/widget/Editor$PinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 3207
    invoke-super {p0}, Landroid/widget/Editor$PinnedPopupWindow;->show()V

    goto :goto_9
.end method
