.class public final enum Lcom/android/internal/telephony/UiccConstants$AppType;
.super Ljava/lang/Enum;
.source "UiccConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/UiccConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AppType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/telephony/UiccConstants$AppType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/UiccConstants$AppType;

.field public static final enum APPTYPE_CSIM:Lcom/android/internal/telephony/UiccConstants$AppType;

.field public static final enum APPTYPE_ISIM:Lcom/android/internal/telephony/UiccConstants$AppType;

.field public static final enum APPTYPE_RUIM:Lcom/android/internal/telephony/UiccConstants$AppType;

.field public static final enum APPTYPE_SIM:Lcom/android/internal/telephony/UiccConstants$AppType;

.field public static final enum APPTYPE_UNKNOWN:Lcom/android/internal/telephony/UiccConstants$AppType;

.field public static final enum APPTYPE_USIM:Lcom/android/internal/telephony/UiccConstants$AppType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 72
    new-instance v0, Lcom/android/internal/telephony/UiccConstants$AppType;

    const-string v1, "APPTYPE_UNKNOWN"

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/UiccConstants$AppType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/UiccConstants$AppType;->APPTYPE_UNKNOWN:Lcom/android/internal/telephony/UiccConstants$AppType;

    .line 73
    new-instance v0, Lcom/android/internal/telephony/UiccConstants$AppType;

    const-string v1, "APPTYPE_SIM"

    invoke-direct {v0, v1, v4}, Lcom/android/internal/telephony/UiccConstants$AppType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/UiccConstants$AppType;->APPTYPE_SIM:Lcom/android/internal/telephony/UiccConstants$AppType;

    .line 74
    new-instance v0, Lcom/android/internal/telephony/UiccConstants$AppType;

    const-string v1, "APPTYPE_USIM"

    invoke-direct {v0, v1, v5}, Lcom/android/internal/telephony/UiccConstants$AppType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/UiccConstants$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/UiccConstants$AppType;

    .line 75
    new-instance v0, Lcom/android/internal/telephony/UiccConstants$AppType;

    const-string v1, "APPTYPE_RUIM"

    invoke-direct {v0, v1, v6}, Lcom/android/internal/telephony/UiccConstants$AppType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/UiccConstants$AppType;->APPTYPE_RUIM:Lcom/android/internal/telephony/UiccConstants$AppType;

    .line 76
    new-instance v0, Lcom/android/internal/telephony/UiccConstants$AppType;

    const-string v1, "APPTYPE_CSIM"

    invoke-direct {v0, v1, v7}, Lcom/android/internal/telephony/UiccConstants$AppType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/UiccConstants$AppType;->APPTYPE_CSIM:Lcom/android/internal/telephony/UiccConstants$AppType;

    .line 77
    new-instance v0, Lcom/android/internal/telephony/UiccConstants$AppType;

    const-string v1, "APPTYPE_ISIM"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/UiccConstants$AppType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/UiccConstants$AppType;->APPTYPE_ISIM:Lcom/android/internal/telephony/UiccConstants$AppType;

    .line 71
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/android/internal/telephony/UiccConstants$AppType;

    sget-object v1, Lcom/android/internal/telephony/UiccConstants$AppType;->APPTYPE_UNKNOWN:Lcom/android/internal/telephony/UiccConstants$AppType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/internal/telephony/UiccConstants$AppType;->APPTYPE_SIM:Lcom/android/internal/telephony/UiccConstants$AppType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/internal/telephony/UiccConstants$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/UiccConstants$AppType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/internal/telephony/UiccConstants$AppType;->APPTYPE_RUIM:Lcom/android/internal/telephony/UiccConstants$AppType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/internal/telephony/UiccConstants$AppType;->APPTYPE_CSIM:Lcom/android/internal/telephony/UiccConstants$AppType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/internal/telephony/UiccConstants$AppType;->APPTYPE_ISIM:Lcom/android/internal/telephony/UiccConstants$AppType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/UiccConstants$AppType;->$VALUES:[Lcom/android/internal/telephony/UiccConstants$AppType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 71
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/UiccConstants$AppType;
    .locals 1
    .parameter "name"

    .prologue
    .line 71
    const-class v0, Lcom/android/internal/telephony/UiccConstants$AppType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/UiccConstants$AppType;

    return-object v0
.end method

.method public static values()[Lcom/android/internal/telephony/UiccConstants$AppType;
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lcom/android/internal/telephony/UiccConstants$AppType;->$VALUES:[Lcom/android/internal/telephony/UiccConstants$AppType;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/UiccConstants$AppType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/UiccConstants$AppType;

    return-object v0
.end method


# virtual methods
.method iscdma()Z
    .locals 2

    .prologue
    .line 93
    sget-object v0, Lcom/android/internal/telephony/UiccConstants$1;->$SwitchMap$com$android$internal$telephony$UiccConstants$AppType:[I

    invoke-virtual {p0}, Lcom/android/internal/telephony/UiccConstants$AppType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 99
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 97
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 93
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method isgsm()Z
    .locals 2

    .prologue
    .line 81
    sget-object v0, Lcom/android/internal/telephony/UiccConstants$1;->$SwitchMap$com$android$internal$telephony$UiccConstants$AppType:[I

    invoke-virtual {p0}, Lcom/android/internal/telephony/UiccConstants$AppType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 88
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 86
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 81
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
