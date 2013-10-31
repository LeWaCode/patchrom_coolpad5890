.class public abstract Landroid/media/IAudioService$Stub;
.super Landroid/os/Binder;
.source "IAudioService.java"

# interfaces
.implements Landroid/media/IAudioService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/IAudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/IAudioService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.media.IAudioService"

.field static final TRANSACTION_abandonAudioFocus:I = 0x2a

.field static final TRANSACTION_adjustLocalOrRemoteStreamVolume:I = 0x2

.field static final TRANSACTION_adjustMasterVolume:I = 0x5

.field static final TRANSACTION_adjustStreamVolume:I = 0x4

.field static final TRANSACTION_adjustSuggestedStreamVolume:I = 0x3

.field static final TRANSACTION_adjustVolume:I = 0x1

.field static final TRANSACTION_dispatchMediaKeyEvent:I = 0x2c

.field static final TRANSACTION_dispatchMediaKeyEventUnderWakelock:I = 0x2d

.field static final TRANSACTION_forceVolumeControlStream:I = 0x3d

.field static final TRANSACTION_getInCallMode:I = 0x1c

.field static final TRANSACTION_getLastAudibleMasterVolume:I = 0x13

.field static final TRANSACTION_getLastAudibleStreamVolume:I = 0x12

.field static final TRANSACTION_getMasterMaxVolume:I = 0x11

.field static final TRANSACTION_getMasterStreamType:I = 0x40

.field static final TRANSACTION_getMasterVolume:I = 0xf

.field static final TRANSACTION_getMode:I = 0x1b

.field static final TRANSACTION_getModeExt:I = 0x1d

.field static final TRANSACTION_getRemoteStreamMaxVolume:I = 0x38

.field static final TRANSACTION_getRemoteStreamVolume:I = 0x39

.field static final TRANSACTION_getRingerMode:I = 0x15

.field static final TRANSACTION_getRingtonePlayer:I = 0x3f

.field static final TRANSACTION_getStreamMaxVolume:I = 0x10

.field static final TRANSACTION_getStreamVolume:I = 0xe

.field static final TRANSACTION_getVibrateSetting:I = 0x17

.field static final TRANSACTION_isBluetoothA2dpOn:I = 0x28

.field static final TRANSACTION_isBluetoothScoOn:I = 0x26

.field static final TRANSACTION_isMasterMute:I = 0xd

.field static final TRANSACTION_isSpeakerphoneOn:I = 0x24

.field static final TRANSACTION_isStreamMute:I = 0xb

.field static final TRANSACTION_loadSoundEffects:I = 0x20

.field static final TRANSACTION_playSoundEffect:I = 0x1e

.field static final TRANSACTION_playSoundEffectVolume:I = 0x1f

.field static final TRANSACTION_registerMediaButtonEventReceiverForCalls:I = 0x30

.field static final TRANSACTION_registerMediaButtonIntent:I = 0x2e

.field static final TRANSACTION_registerRemoteControlClient:I = 0x32

.field static final TRANSACTION_registerRemoteControlDisplay:I = 0x34

.field static final TRANSACTION_registerRemoteVolumeObserverForRcc:I = 0x3a

.field static final TRANSACTION_reloadAudioSettings:I = 0x22

.field static final TRANSACTION_remoteControlDisplayUsesBitmapSize:I = 0x36

.field static final TRANSACTION_requestAudioFocus:I = 0x29

.field static final TRANSACTION_setBluetoothA2dpDeviceConnectionState:I = 0x42

.field static final TRANSACTION_setBluetoothA2dpOn:I = 0x27

.field static final TRANSACTION_setBluetoothScoOn:I = 0x25

.field static final TRANSACTION_setInCallMode:I = 0x1a

.field static final TRANSACTION_setMasterMute:I = 0xc

.field static final TRANSACTION_setMasterVolume:I = 0x8

.field static final TRANSACTION_setMode:I = 0x19

.field static final TRANSACTION_setPlaybackInfoForRcc:I = 0x37

.field static final TRANSACTION_setRemoteStreamVolume:I = 0x7

.field static final TRANSACTION_setRingerMode:I = 0x14

.field static final TRANSACTION_setRingtonePlayer:I = 0x3e

.field static final TRANSACTION_setSpeakerphoneOn:I = 0x23

.field static final TRANSACTION_setStreamMute:I = 0xa

.field static final TRANSACTION_setStreamSolo:I = 0x9

.field static final TRANSACTION_setStreamVolume:I = 0x6

.field static final TRANSACTION_setVibrateSetting:I = 0x16

.field static final TRANSACTION_setWiredDeviceConnectionState:I = 0x41

.field static final TRANSACTION_shouldVibrate:I = 0x18

.field static final TRANSACTION_startBluetoothSco:I = 0x3b

.field static final TRANSACTION_startWatchingRoutes:I = 0x43

.field static final TRANSACTION_stopBluetoothSco:I = 0x3c

.field static final TRANSACTION_unloadSoundEffects:I = 0x21

.field static final TRANSACTION_unregisterAudioFocusClient:I = 0x2b

.field static final TRANSACTION_unregisterMediaButtonEventReceiverForCalls:I = 0x31

.field static final TRANSACTION_unregisterMediaButtonIntent:I = 0x2f

.field static final TRANSACTION_unregisterRemoteControlClient:I = 0x33

.field static final TRANSACTION_unregisterRemoteControlDisplay:I = 0x35


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p0, p0, v0}, Landroid/media/IAudioService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;
    .locals 2
    .parameter "obj"

    .prologue
    .line 26
    if-nez p0, :cond_0

    .line 27
    const/4 v0, 0x0

    .line 33
    :goto_0
    return-object v0

    .line 29
    :cond_0
    const-string v1, "android.media.IAudioService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/media/IAudioService;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Landroid/media/IAudioService;

    goto :goto_0

    .line 33
    :cond_1
    new-instance v0, Landroid/media/IAudioService$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/media/IAudioService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 37
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 9
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v8, 0x1

    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 760
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v8

    :goto_0
    return v8

    .line 45
    :sswitch_0
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 50
    :sswitch_1
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 54
    .local v1, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 55
    .local v2, _arg1:I
    invoke-virtual {p0, v1, v2}, Landroid/media/IAudioService$Stub;->adjustVolume(II)V

    .line 56
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 61
    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    :sswitch_2
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 65
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 66
    .restart local v2       #_arg1:I
    invoke-virtual {p0, v1, v2}, Landroid/media/IAudioService$Stub;->adjustLocalOrRemoteStreamVolume(II)V

    goto :goto_0

    .line 71
    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    :sswitch_3
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 75
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 77
    .restart local v2       #_arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 78
    .local v3, _arg2:I
    invoke-virtual {p0, v1, v2, v3}, Landroid/media/IAudioService$Stub;->adjustSuggestedStreamVolume(III)V

    .line 79
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 84
    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    .end local v3           #_arg2:I
    :sswitch_4
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 88
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 90
    .restart local v2       #_arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 91
    .restart local v3       #_arg2:I
    invoke-virtual {p0, v1, v2, v3}, Landroid/media/IAudioService$Stub;->adjustStreamVolume(III)V

    .line 92
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 97
    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    .end local v3           #_arg2:I
    :sswitch_5
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 101
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 102
    .restart local v2       #_arg1:I
    invoke-virtual {p0, v1, v2}, Landroid/media/IAudioService$Stub;->adjustMasterVolume(II)V

    .line 103
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 108
    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    :sswitch_6
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 110
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 112
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 114
    .restart local v2       #_arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 115
    .restart local v3       #_arg2:I
    invoke-virtual {p0, v1, v2, v3}, Landroid/media/IAudioService$Stub;->setStreamVolume(III)V

    .line 116
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 121
    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    .end local v3           #_arg2:I
    :sswitch_7
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 123
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 124
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->setRemoteStreamVolume(I)V

    goto/16 :goto_0

    .line 129
    .end local v1           #_arg0:I
    :sswitch_8
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 131
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 133
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 134
    .restart local v2       #_arg1:I
    invoke-virtual {p0, v1, v2}, Landroid/media/IAudioService$Stub;->setMasterVolume(II)V

    .line 135
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 140
    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    :sswitch_9
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 142
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 144
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    move v2, v8

    .line 146
    .local v2, _arg1:Z
    :cond_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 147
    .local v3, _arg2:Landroid/os/IBinder;
    invoke-virtual {p0, v1, v2, v3}, Landroid/media/IAudioService$Stub;->setStreamSolo(IZLandroid/os/IBinder;)V

    .line 148
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 153
    .end local v1           #_arg0:I
    .end local v2           #_arg1:Z
    .end local v3           #_arg2:Landroid/os/IBinder;
    :sswitch_a
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 155
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 157
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    move v2, v8

    .line 159
    .restart local v2       #_arg1:Z
    :cond_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 160
    .restart local v3       #_arg2:Landroid/os/IBinder;
    invoke-virtual {p0, v1, v2, v3}, Landroid/media/IAudioService$Stub;->setStreamMute(IZLandroid/os/IBinder;)V

    .line 161
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 166
    .end local v1           #_arg0:I
    .end local v2           #_arg1:Z
    .end local v3           #_arg2:Landroid/os/IBinder;
    :sswitch_b
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 168
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 169
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->isStreamMute(I)Z

    move-result v7

    .line 170
    .local v7, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 171
    if-eqz v7, :cond_2

    move v2, v8

    :cond_2
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 176
    .end local v1           #_arg0:I
    .end local v7           #_result:Z
    :sswitch_c
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 178
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3

    move v1, v8

    .line 180
    .local v1, _arg0:Z
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 182
    .local v2, _arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 183
    .restart local v3       #_arg2:Landroid/os/IBinder;
    invoke-virtual {p0, v1, v2, v3}, Landroid/media/IAudioService$Stub;->setMasterMute(ZILandroid/os/IBinder;)V

    .line 184
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v1           #_arg0:Z
    .end local v2           #_arg1:I
    .end local v3           #_arg2:Landroid/os/IBinder;
    :cond_3
    move v1, v2

    .line 178
    goto :goto_1

    .line 189
    :sswitch_d
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 190
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->isMasterMute()Z

    move-result v7

    .line 191
    .restart local v7       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 192
    if-eqz v7, :cond_4

    move v2, v8

    :cond_4
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 197
    .end local v7           #_result:Z
    :sswitch_e
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 199
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 200
    .local v1, _arg0:I
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->getStreamVolume(I)I

    move-result v7

    .line 201
    .local v7, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 202
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 207
    .end local v1           #_arg0:I
    .end local v7           #_result:I
    :sswitch_f
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 208
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->getMasterVolume()I

    move-result v7

    .line 209
    .restart local v7       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 210
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 215
    .end local v7           #_result:I
    :sswitch_10
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 217
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 218
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->getStreamMaxVolume(I)I

    move-result v7

    .line 219
    .restart local v7       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 220
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 225
    .end local v1           #_arg0:I
    .end local v7           #_result:I
    :sswitch_11
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 226
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->getMasterMaxVolume()I

    move-result v7

    .line 227
    .restart local v7       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 228
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 233
    .end local v7           #_result:I
    :sswitch_12
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 235
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 236
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->getLastAudibleStreamVolume(I)I

    move-result v7

    .line 237
    .restart local v7       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 238
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 243
    .end local v1           #_arg0:I
    .end local v7           #_result:I
    :sswitch_13
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 244
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->getLastAudibleMasterVolume()I

    move-result v7

    .line 245
    .restart local v7       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 246
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 251
    .end local v7           #_result:I
    :sswitch_14
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 253
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 254
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->setRingerMode(I)V

    .line 255
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 260
    .end local v1           #_arg0:I
    :sswitch_15
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 261
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->getRingerMode()I

    move-result v7

    .line 262
    .restart local v7       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 263
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 268
    .end local v7           #_result:I
    :sswitch_16
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 270
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 272
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 273
    .restart local v2       #_arg1:I
    invoke-virtual {p0, v1, v2}, Landroid/media/IAudioService$Stub;->setVibrateSetting(II)V

    .line 274
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 279
    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    :sswitch_17
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 281
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 282
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->getVibrateSetting(I)I

    move-result v7

    .line 283
    .restart local v7       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 284
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 289
    .end local v1           #_arg0:I
    .end local v7           #_result:I
    :sswitch_18
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 291
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 292
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->shouldVibrate(I)Z

    move-result v7

    .line 293
    .local v7, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 294
    if-eqz v7, :cond_5

    move v2, v8

    :cond_5
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 299
    .end local v1           #_arg0:I
    .end local v7           #_result:Z
    :sswitch_19
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 301
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 303
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 304
    .local v2, _arg1:Landroid/os/IBinder;
    invoke-virtual {p0, v1, v2}, Landroid/media/IAudioService$Stub;->setMode(ILandroid/os/IBinder;)V

    .line 305
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 310
    .end local v1           #_arg0:I
    .end local v2           #_arg1:Landroid/os/IBinder;
    :sswitch_1a
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 312
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 314
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 315
    .restart local v2       #_arg1:Landroid/os/IBinder;
    invoke-virtual {p0, v1, v2}, Landroid/media/IAudioService$Stub;->setInCallMode(ILandroid/os/IBinder;)V

    .line 316
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 321
    .end local v1           #_arg0:I
    .end local v2           #_arg1:Landroid/os/IBinder;
    :sswitch_1b
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 322
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->getMode()I

    move-result v7

    .line 323
    .local v7, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 324
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 329
    .end local v7           #_result:I
    :sswitch_1c
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 330
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->getInCallMode()I

    move-result v7

    .line 331
    .restart local v7       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 332
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 337
    .end local v7           #_result:I
    :sswitch_1d
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 338
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->getModeExt()I

    move-result v7

    .line 339
    .restart local v7       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 340
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 345
    .end local v7           #_result:I
    :sswitch_1e
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 347
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 348
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->playSoundEffect(I)V

    goto/16 :goto_0

    .line 353
    .end local v1           #_arg0:I
    :sswitch_1f
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 355
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 357
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    .line 358
    .local v2, _arg1:F
    invoke-virtual {p0, v1, v2}, Landroid/media/IAudioService$Stub;->playSoundEffectVolume(IF)V

    goto/16 :goto_0

    .line 363
    .end local v1           #_arg0:I
    .end local v2           #_arg1:F
    :sswitch_20
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 364
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->loadSoundEffects()Z

    move-result v7

    .line 365
    .local v7, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 366
    if-eqz v7, :cond_6

    move v2, v8

    :cond_6
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 371
    .end local v7           #_result:Z
    :sswitch_21
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 372
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->unloadSoundEffects()V

    goto/16 :goto_0

    .line 377
    :sswitch_22
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 378
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->reloadAudioSettings()V

    goto/16 :goto_0

    .line 383
    :sswitch_23
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 385
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_7

    move v1, v8

    .line 386
    .local v1, _arg0:Z
    :goto_2
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->setSpeakerphoneOn(Z)V

    .line 387
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v1           #_arg0:Z
    :cond_7
    move v1, v2

    .line 385
    goto :goto_2

    .line 392
    :sswitch_24
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 393
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->isSpeakerphoneOn()Z

    move-result v7

    .line 394
    .restart local v7       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 395
    if-eqz v7, :cond_8

    move v2, v8

    :cond_8
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 400
    .end local v7           #_result:Z
    :sswitch_25
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 402
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_9

    move v1, v8

    .line 403
    .restart local v1       #_arg0:Z
    :goto_3
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->setBluetoothScoOn(Z)V

    .line 404
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v1           #_arg0:Z
    :cond_9
    move v1, v2

    .line 402
    goto :goto_3

    .line 409
    :sswitch_26
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 410
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->isBluetoothScoOn()Z

    move-result v7

    .line 411
    .restart local v7       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 412
    if-eqz v7, :cond_a

    move v2, v8

    :cond_a
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 417
    .end local v7           #_result:Z
    :sswitch_27
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 419
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_b

    move v1, v8

    .line 420
    .restart local v1       #_arg0:Z
    :goto_4
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->setBluetoothA2dpOn(Z)V

    .line 421
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v1           #_arg0:Z
    :cond_b
    move v1, v2

    .line 419
    goto :goto_4

    .line 426
    :sswitch_28
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 427
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->isBluetoothA2dpOn()Z

    move-result v7

    .line 428
    .restart local v7       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 429
    if-eqz v7, :cond_c

    move v2, v8

    :cond_c
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 434
    .end local v7           #_result:Z
    :sswitch_29
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 436
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 438
    .local v1, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 440
    .local v2, _arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 442
    .restart local v3       #_arg2:Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IAudioFocusDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioFocusDispatcher;

    move-result-object v4

    .line 444
    .local v4, _arg3:Landroid/media/IAudioFocusDispatcher;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 446
    .local v5, _arg4:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .local v6, _arg5:Ljava/lang/String;
    move-object v0, p0

    .line 447
    invoke-virtual/range {v0 .. v6}, Landroid/media/IAudioService$Stub;->requestAudioFocus(IILandroid/os/IBinder;Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 448
    .local v7, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 449
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 454
    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    .end local v3           #_arg2:Landroid/os/IBinder;
    .end local v4           #_arg3:Landroid/media/IAudioFocusDispatcher;
    .end local v5           #_arg4:Ljava/lang/String;
    .end local v6           #_arg5:Ljava/lang/String;
    .end local v7           #_result:I
    :sswitch_2a
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 456
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IAudioFocusDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioFocusDispatcher;

    move-result-object v1

    .line 458
    .local v1, _arg0:Landroid/media/IAudioFocusDispatcher;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 459
    .local v2, _arg1:Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/media/IAudioService$Stub;->abandonAudioFocus(Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;)I

    move-result v7

    .line 460
    .restart local v7       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 461
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 466
    .end local v1           #_arg0:Landroid/media/IAudioFocusDispatcher;
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v7           #_result:I
    :sswitch_2b
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 468
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 469
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->unregisterAudioFocusClient(Ljava/lang/String;)V

    .line 470
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 475
    .end local v1           #_arg0:Ljava/lang/String;
    :sswitch_2c
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 477
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_d

    .line 478
    sget-object v0, Landroid/view/KeyEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/KeyEvent;

    .line 483
    .local v1, _arg0:Landroid/view/KeyEvent;
    :goto_5
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->dispatchMediaKeyEvent(Landroid/view/KeyEvent;)V

    goto/16 :goto_0

    .line 481
    .end local v1           #_arg0:Landroid/view/KeyEvent;
    :cond_d
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/view/KeyEvent;
    goto :goto_5

    .line 488
    .end local v1           #_arg0:Landroid/view/KeyEvent;
    :sswitch_2d
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 490
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_e

    .line 491
    sget-object v0, Landroid/view/KeyEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/KeyEvent;

    .line 496
    .restart local v1       #_arg0:Landroid/view/KeyEvent;
    :goto_6
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->dispatchMediaKeyEventUnderWakelock(Landroid/view/KeyEvent;)V

    .line 497
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 494
    .end local v1           #_arg0:Landroid/view/KeyEvent;
    :cond_e
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/view/KeyEvent;
    goto :goto_6

    .line 502
    .end local v1           #_arg0:Landroid/view/KeyEvent;
    :sswitch_2e
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 504
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_f

    .line 505
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    .line 511
    .local v1, _arg0:Landroid/app/PendingIntent;
    :goto_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_10

    .line 512
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 517
    .local v2, _arg1:Landroid/content/ComponentName;
    :goto_8
    invoke-virtual {p0, v1, v2}, Landroid/media/IAudioService$Stub;->registerMediaButtonIntent(Landroid/app/PendingIntent;Landroid/content/ComponentName;)V

    goto/16 :goto_0

    .line 508
    .end local v1           #_arg0:Landroid/app/PendingIntent;
    .end local v2           #_arg1:Landroid/content/ComponentName;
    :cond_f
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/app/PendingIntent;
    goto :goto_7

    .line 515
    :cond_10
    const/4 v2, 0x0

    .restart local v2       #_arg1:Landroid/content/ComponentName;
    goto :goto_8

    .line 522
    .end local v1           #_arg0:Landroid/app/PendingIntent;
    .end local v2           #_arg1:Landroid/content/ComponentName;
    :sswitch_2f
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 524
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_11

    .line 525
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    .line 531
    .restart local v1       #_arg0:Landroid/app/PendingIntent;
    :goto_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_12

    .line 532
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 537
    .restart local v2       #_arg1:Landroid/content/ComponentName;
    :goto_a
    invoke-virtual {p0, v1, v2}, Landroid/media/IAudioService$Stub;->unregisterMediaButtonIntent(Landroid/app/PendingIntent;Landroid/content/ComponentName;)V

    goto/16 :goto_0

    .line 528
    .end local v1           #_arg0:Landroid/app/PendingIntent;
    .end local v2           #_arg1:Landroid/content/ComponentName;
    :cond_11
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/app/PendingIntent;
    goto :goto_9

    .line 535
    :cond_12
    const/4 v2, 0x0

    .restart local v2       #_arg1:Landroid/content/ComponentName;
    goto :goto_a

    .line 542
    .end local v1           #_arg0:Landroid/app/PendingIntent;
    .end local v2           #_arg1:Landroid/content/ComponentName;
    :sswitch_30
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 544
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_13

    .line 545
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 550
    .local v1, _arg0:Landroid/content/ComponentName;
    :goto_b
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->registerMediaButtonEventReceiverForCalls(Landroid/content/ComponentName;)V

    goto/16 :goto_0

    .line 548
    .end local v1           #_arg0:Landroid/content/ComponentName;
    :cond_13
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_b

    .line 555
    .end local v1           #_arg0:Landroid/content/ComponentName;
    :sswitch_31
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 556
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->unregisterMediaButtonEventReceiverForCalls()V

    goto/16 :goto_0

    .line 561
    :sswitch_32
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 563
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_14

    .line 564
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    .line 570
    .local v1, _arg0:Landroid/app/PendingIntent;
    :goto_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IRemoteControlClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IRemoteControlClient;

    move-result-object v2

    .line 572
    .local v2, _arg1:Landroid/media/IRemoteControlClient;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 573
    .local v3, _arg2:Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3}, Landroid/media/IAudioService$Stub;->registerRemoteControlClient(Landroid/app/PendingIntent;Landroid/media/IRemoteControlClient;Ljava/lang/String;)I

    move-result v7

    .line 574
    .restart local v7       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 575
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 567
    .end local v1           #_arg0:Landroid/app/PendingIntent;
    .end local v2           #_arg1:Landroid/media/IRemoteControlClient;
    .end local v3           #_arg2:Ljava/lang/String;
    .end local v7           #_result:I
    :cond_14
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/app/PendingIntent;
    goto :goto_c

    .line 580
    .end local v1           #_arg0:Landroid/app/PendingIntent;
    :sswitch_33
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 582
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_15

    .line 583
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    .line 589
    .restart local v1       #_arg0:Landroid/app/PendingIntent;
    :goto_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IRemoteControlClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IRemoteControlClient;

    move-result-object v2

    .line 590
    .restart local v2       #_arg1:Landroid/media/IRemoteControlClient;
    invoke-virtual {p0, v1, v2}, Landroid/media/IAudioService$Stub;->unregisterRemoteControlClient(Landroid/app/PendingIntent;Landroid/media/IRemoteControlClient;)V

    goto/16 :goto_0

    .line 586
    .end local v1           #_arg0:Landroid/app/PendingIntent;
    .end local v2           #_arg1:Landroid/media/IRemoteControlClient;
    :cond_15
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/app/PendingIntent;
    goto :goto_d

    .line 595
    .end local v1           #_arg0:Landroid/app/PendingIntent;
    :sswitch_34
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 597
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IRemoteControlDisplay$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IRemoteControlDisplay;

    move-result-object v1

    .line 598
    .local v1, _arg0:Landroid/media/IRemoteControlDisplay;
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->registerRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;)V

    goto/16 :goto_0

    .line 603
    .end local v1           #_arg0:Landroid/media/IRemoteControlDisplay;
    :sswitch_35
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 605
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IRemoteControlDisplay$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IRemoteControlDisplay;

    move-result-object v1

    .line 606
    .restart local v1       #_arg0:Landroid/media/IRemoteControlDisplay;
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->unregisterRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;)V

    goto/16 :goto_0

    .line 611
    .end local v1           #_arg0:Landroid/media/IRemoteControlDisplay;
    :sswitch_36
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 613
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IRemoteControlDisplay$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IRemoteControlDisplay;

    move-result-object v1

    .line 615
    .restart local v1       #_arg0:Landroid/media/IRemoteControlDisplay;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 617
    .local v2, _arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 618
    .local v3, _arg2:I
    invoke-virtual {p0, v1, v2, v3}, Landroid/media/IAudioService$Stub;->remoteControlDisplayUsesBitmapSize(Landroid/media/IRemoteControlDisplay;II)V

    goto/16 :goto_0

    .line 623
    .end local v1           #_arg0:Landroid/media/IRemoteControlDisplay;
    .end local v2           #_arg1:I
    .end local v3           #_arg2:I
    :sswitch_37
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 625
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 627
    .local v1, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 629
    .restart local v2       #_arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 630
    .restart local v3       #_arg2:I
    invoke-virtual {p0, v1, v2, v3}, Landroid/media/IAudioService$Stub;->setPlaybackInfoForRcc(III)V

    goto/16 :goto_0

    .line 635
    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    .end local v3           #_arg2:I
    :sswitch_38
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 636
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->getRemoteStreamMaxVolume()I

    move-result v7

    .line 637
    .restart local v7       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 638
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 643
    .end local v7           #_result:I
    :sswitch_39
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 644
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->getRemoteStreamVolume()I

    move-result v7

    .line 645
    .restart local v7       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 646
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 651
    .end local v7           #_result:I
    :sswitch_3a
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 653
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 655
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IRemoteVolumeObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IRemoteVolumeObserver;

    move-result-object v2

    .line 656
    .local v2, _arg1:Landroid/media/IRemoteVolumeObserver;
    invoke-virtual {p0, v1, v2}, Landroid/media/IAudioService$Stub;->registerRemoteVolumeObserverForRcc(ILandroid/media/IRemoteVolumeObserver;)V

    goto/16 :goto_0

    .line 661
    .end local v1           #_arg0:I
    .end local v2           #_arg1:Landroid/media/IRemoteVolumeObserver;
    :sswitch_3b
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 663
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 664
    .local v1, _arg0:Landroid/os/IBinder;
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->startBluetoothSco(Landroid/os/IBinder;)V

    .line 665
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 670
    .end local v1           #_arg0:Landroid/os/IBinder;
    :sswitch_3c
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 672
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 673
    .restart local v1       #_arg0:Landroid/os/IBinder;
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->stopBluetoothSco(Landroid/os/IBinder;)V

    .line 674
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 679
    .end local v1           #_arg0:Landroid/os/IBinder;
    :sswitch_3d
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 681
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 683
    .local v1, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 684
    .local v2, _arg1:Landroid/os/IBinder;
    invoke-virtual {p0, v1, v2}, Landroid/media/IAudioService$Stub;->forceVolumeControlStream(ILandroid/os/IBinder;)V

    .line 685
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 690
    .end local v1           #_arg0:I
    .end local v2           #_arg1:Landroid/os/IBinder;
    :sswitch_3e
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 692
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IRingtonePlayer$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IRingtonePlayer;

    move-result-object v1

    .line 693
    .local v1, _arg0:Landroid/media/IRingtonePlayer;
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->setRingtonePlayer(Landroid/media/IRingtonePlayer;)V

    .line 694
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 699
    .end local v1           #_arg0:Landroid/media/IRingtonePlayer;
    :sswitch_3f
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 700
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->getRingtonePlayer()Landroid/media/IRingtonePlayer;

    move-result-object v7

    .line 701
    .local v7, _result:Landroid/media/IRingtonePlayer;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 702
    if-eqz v7, :cond_16

    invoke-interface {v7}, Landroid/media/IRingtonePlayer;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :goto_e
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto/16 :goto_0

    :cond_16
    const/4 v0, 0x0

    goto :goto_e

    .line 707
    .end local v7           #_result:Landroid/media/IRingtonePlayer;
    :sswitch_40
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 708
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->getMasterStreamType()I

    move-result v7

    .line 709
    .local v7, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 710
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 715
    .end local v7           #_result:I
    :sswitch_41
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 717
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 719
    .local v1, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 721
    .local v2, _arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 722
    .local v3, _arg2:Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3}, Landroid/media/IAudioService$Stub;->setWiredDeviceConnectionState(IILjava/lang/String;)V

    .line 723
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 728
    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    .end local v3           #_arg2:Ljava/lang/String;
    :sswitch_42
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 730
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_17

    .line 731
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 737
    .local v1, _arg0:Landroid/bluetooth/BluetoothDevice;
    :goto_f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 738
    .restart local v2       #_arg1:I
    invoke-virtual {p0, v1, v2}, Landroid/media/IAudioService$Stub;->setBluetoothA2dpDeviceConnectionState(Landroid/bluetooth/BluetoothDevice;I)I

    move-result v7

    .line 739
    .restart local v7       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 740
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 734
    .end local v1           #_arg0:Landroid/bluetooth/BluetoothDevice;
    .end local v2           #_arg1:I
    .end local v7           #_result:I
    :cond_17
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/bluetooth/BluetoothDevice;
    goto :goto_f

    .line 745
    .end local v1           #_arg0:Landroid/bluetooth/BluetoothDevice;
    :sswitch_43
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 747
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IAudioRoutesObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioRoutesObserver;

    move-result-object v1

    .line 748
    .local v1, _arg0:Landroid/media/IAudioRoutesObserver;
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->startWatchingRoutes(Landroid/media/IAudioRoutesObserver;)Landroid/media/AudioRoutesInfo;

    move-result-object v7

    .line 749
    .local v7, _result:Landroid/media/AudioRoutesInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 750
    if-eqz v7, :cond_18

    .line 751
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 752
    invoke-virtual {v7, p3, v8}, Landroid/media/AudioRoutesInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 755
    :cond_18
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 41
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_1e
        0x1f -> :sswitch_1f
        0x20 -> :sswitch_20
        0x21 -> :sswitch_21
        0x22 -> :sswitch_22
        0x23 -> :sswitch_23
        0x24 -> :sswitch_24
        0x25 -> :sswitch_25
        0x26 -> :sswitch_26
        0x27 -> :sswitch_27
        0x28 -> :sswitch_28
        0x29 -> :sswitch_29
        0x2a -> :sswitch_2a
        0x2b -> :sswitch_2b
        0x2c -> :sswitch_2c
        0x2d -> :sswitch_2d
        0x2e -> :sswitch_2e
        0x2f -> :sswitch_2f
        0x30 -> :sswitch_30
        0x31 -> :sswitch_31
        0x32 -> :sswitch_32
        0x33 -> :sswitch_33
        0x34 -> :sswitch_34
        0x35 -> :sswitch_35
        0x36 -> :sswitch_36
        0x37 -> :sswitch_37
        0x38 -> :sswitch_38
        0x39 -> :sswitch_39
        0x3a -> :sswitch_3a
        0x3b -> :sswitch_3b
        0x3c -> :sswitch_3c
        0x3d -> :sswitch_3d
        0x3e -> :sswitch_3e
        0x3f -> :sswitch_3f
        0x40 -> :sswitch_40
        0x41 -> :sswitch_41
        0x42 -> :sswitch_42
        0x43 -> :sswitch_43
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
