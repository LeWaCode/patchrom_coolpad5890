.class abstract Lcom/android/internal/policy/impl/GlobalActions$SinglePressPowerAction;
.super Ljava/lang/Object;
.source "GlobalActions.java"

# interfaces
.implements Lcom/android/internal/policy/impl/GlobalActions$Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/GlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "SinglePressPowerAction"
.end annotation


# instance fields
.field private TipsView:Landroid/widget/TextView;

.field private final mIconResId:I

.field private final mMessageGoOnPressTipsId:I

.field private final mMessageResId:I


# direct methods
.method protected constructor <init>(IIII)V
    .locals 0
    .parameter "iconResId"
    .parameter "messageResId"
    .parameter "goOnPressTipsResId"
    .parameter "resetTipsResId"

    .prologue
    .line 1110
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1111
    iput p1, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressPowerAction;->mIconResId:I

    .line 1112
    iput p2, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressPowerAction;->mMessageResId:I

    .line 1113
    iput p3, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressPowerAction;->mMessageGoOnPressTipsId:I

    .line 1114
    return-void
.end method


# virtual methods
.method public create(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 8
    .parameter "context"
    .parameter "convertView"
    .parameter "parent"
    .parameter "inflater"

    .prologue
    const/16 v7, 0xff

    const/4 v6, 0x0

    .line 1133
    if-eqz p2, :cond_1

    move-object v3, p2

    .line 1136
    .local v3, v:Landroid/view/View;
    :goto_0
    const v4, 0x1020006

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 1137
    .local v1, icon:Landroid/widget/ImageView;
    const v4, 0x102000b

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1138
    .local v2, messageView:Landroid/widget/TextView;
    const v4, 0x1020275

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressPowerAction;->TipsView:Landroid/widget/TextView;

    .line 1140
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/GlobalActions$SinglePressPowerAction;->isEnabled()Z

    move-result v0

    .line 1142
    .local v0, enabled:Z
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressPowerAction;->mIconResId:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1144
    iget v4, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressPowerAction;->mMessageResId:I

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    .line 1146
    iget-object v4, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressPowerAction;->TipsView:Landroid/widget/TextView;

    if-eqz v4, :cond_0

    .line 1147
    iget-object v4, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressPowerAction;->TipsView:Landroid/widget/TextView;

    iget v5, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressPowerAction;->mMessageGoOnPressTipsId:I

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 1148
    iget-object v4, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressPowerAction;->TipsView:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1149
    iget-object v4, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressPowerAction;->TipsView:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1150
    iget-object v4, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressPowerAction;->TipsView:Landroid/widget/TextView;

    invoke-static {v6, v7, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1152
    :cond_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 1154
    return-object v3

    .line 1133
    .end local v0           #enabled:Z
    .end local v1           #icon:Landroid/widget/ImageView;
    .end local v2           #messageView:Landroid/widget/TextView;
    .end local v3           #v:Landroid/view/View;
    :cond_1
    const v4, 0x1090041

    invoke-virtual {p4, v4, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    goto :goto_0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 1119
    const/4 v0, 0x1

    return v0
.end method

.method public onLongPress()Z
    .locals 1

    .prologue
    .line 1126
    const/4 v0, 0x0

    return v0
.end method

.method public abstract onPress()V
.end method
