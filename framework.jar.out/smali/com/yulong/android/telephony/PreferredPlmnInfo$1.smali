.class final Lcom/yulong/android/telephony/PreferredPlmnInfo$1;
.super Ljava/lang/Object;
.source "PreferredPlmnInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yulong/android/telephony/PreferredPlmnInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/yulong/android/telephony/PreferredPlmnInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 121
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/yulong/android/telephony/PreferredPlmnInfo;
    .locals 7
    .parameter "in"

    .prologue
    .line 123
    new-instance v0, Lcom/yulong/android/telephony/PreferredPlmnInfo;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-direct/range {v0 .. v6}, Lcom/yulong/android/telephony/PreferredPlmnInfo;-><init>(IILjava/lang/String;III)V

    .line 130
    .local v0, plmnList:Lcom/yulong/android/telephony/PreferredPlmnInfo;
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 121
    invoke-virtual {p0, p1}, Lcom/yulong/android/telephony/PreferredPlmnInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/yulong/android/telephony/PreferredPlmnInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/yulong/android/telephony/PreferredPlmnInfo;
    .locals 1
    .parameter "size"

    .prologue
    .line 134
    new-array v0, p1, [Lcom/yulong/android/telephony/PreferredPlmnInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 121
    invoke-virtual {p0, p1}, Lcom/yulong/android/telephony/PreferredPlmnInfo$1;->newArray(I)[Lcom/yulong/android/telephony/PreferredPlmnInfo;

    move-result-object v0

    return-object v0
.end method
