.class public final enum Lcom/android/gallery3d/photoeditor/actions/EffectToolFactory$ScalePickerType;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum DE:Lcom/android/gallery3d/photoeditor/actions/EffectToolFactory$ScalePickerType;

.field public static final enum DF:Lcom/android/gallery3d/photoeditor/actions/EffectToolFactory$ScalePickerType;

.field public static final enum DG:Lcom/android/gallery3d/photoeditor/actions/EffectToolFactory$ScalePickerType;

.field public static final enum DH:Lcom/android/gallery3d/photoeditor/actions/EffectToolFactory$ScalePickerType;

.field private static final synthetic DI:[Lcom/android/gallery3d/photoeditor/actions/EffectToolFactory$ScalePickerType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 32
    new-instance v0, Lcom/android/gallery3d/photoeditor/actions/EffectToolFactory$ScalePickerType;

    const-string v1, "LIGHT"

    invoke-direct {v0, v1, v2}, Lcom/android/gallery3d/photoeditor/actions/EffectToolFactory$ScalePickerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/gallery3d/photoeditor/actions/EffectToolFactory$ScalePickerType;->DE:Lcom/android/gallery3d/photoeditor/actions/EffectToolFactory$ScalePickerType;

    new-instance v0, Lcom/android/gallery3d/photoeditor/actions/EffectToolFactory$ScalePickerType;

    const-string v1, "SHADOW"

    invoke-direct {v0, v1, v3}, Lcom/android/gallery3d/photoeditor/actions/EffectToolFactory$ScalePickerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/gallery3d/photoeditor/actions/EffectToolFactory$ScalePickerType;->DF:Lcom/android/gallery3d/photoeditor/actions/EffectToolFactory$ScalePickerType;

    new-instance v0, Lcom/android/gallery3d/photoeditor/actions/EffectToolFactory$ScalePickerType;

    const-string v1, "COLOR"

    invoke-direct {v0, v1, v4}, Lcom/android/gallery3d/photoeditor/actions/EffectToolFactory$ScalePickerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/gallery3d/photoeditor/actions/EffectToolFactory$ScalePickerType;->DG:Lcom/android/gallery3d/photoeditor/actions/EffectToolFactory$ScalePickerType;

    new-instance v0, Lcom/android/gallery3d/photoeditor/actions/EffectToolFactory$ScalePickerType;

    const-string v1, "GENERIC"

    invoke-direct {v0, v1, v5}, Lcom/android/gallery3d/photoeditor/actions/EffectToolFactory$ScalePickerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/gallery3d/photoeditor/actions/EffectToolFactory$ScalePickerType;->DH:Lcom/android/gallery3d/photoeditor/actions/EffectToolFactory$ScalePickerType;

    .line 31
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/gallery3d/photoeditor/actions/EffectToolFactory$ScalePickerType;

    sget-object v1, Lcom/android/gallery3d/photoeditor/actions/EffectToolFactory$ScalePickerType;->DE:Lcom/android/gallery3d/photoeditor/actions/EffectToolFactory$ScalePickerType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/gallery3d/photoeditor/actions/EffectToolFactory$ScalePickerType;->DF:Lcom/android/gallery3d/photoeditor/actions/EffectToolFactory$ScalePickerType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/gallery3d/photoeditor/actions/EffectToolFactory$ScalePickerType;->DG:Lcom/android/gallery3d/photoeditor/actions/EffectToolFactory$ScalePickerType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/gallery3d/photoeditor/actions/EffectToolFactory$ScalePickerType;->DH:Lcom/android/gallery3d/photoeditor/actions/EffectToolFactory$ScalePickerType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/gallery3d/photoeditor/actions/EffectToolFactory$ScalePickerType;->DI:[Lcom/android/gallery3d/photoeditor/actions/EffectToolFactory$ScalePickerType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/gallery3d/photoeditor/actions/EffectToolFactory$ScalePickerType;
    .locals 1
    .parameter

    .prologue
    .line 31
    const-class v0, Lcom/android/gallery3d/photoeditor/actions/EffectToolFactory$ScalePickerType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/photoeditor/actions/EffectToolFactory$ScalePickerType;

    return-object v0
.end method

.method public static values()[Lcom/android/gallery3d/photoeditor/actions/EffectToolFactory$ScalePickerType;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/android/gallery3d/photoeditor/actions/EffectToolFactory$ScalePickerType;->DI:[Lcom/android/gallery3d/photoeditor/actions/EffectToolFactory$ScalePickerType;

    invoke-virtual {v0}, [Lcom/android/gallery3d/photoeditor/actions/EffectToolFactory$ScalePickerType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/gallery3d/photoeditor/actions/EffectToolFactory$ScalePickerType;

    return-object v0
.end method
