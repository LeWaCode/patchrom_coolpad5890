.class Lcom/android/internal/policy/impl/PasswordUnlockScreen$1;
.super Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallbackImpl;
.source "PasswordUnlockScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PasswordUnlockScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/PasswordUnlockScreen;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PasswordUnlockScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 168
    iput-object p1, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/PasswordUnlockScreen;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallbackImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public OnrefreshDoubleTime(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 7
    .parameter "localCityName"
    .parameter "localCityTime"
    .parameter "localCityDate"
    .parameter "appointCityName"
    .parameter "appointCityTime"
    .parameter "appointCityDate"

    .prologue
    .line 248
    const-string v0, "PasswordUnlockScreen"

    const-string v1, "...... call back OnrefreshDoubleTime"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    iget-object v0, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/PasswordUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mLockScreenWidgetManager:Lcom/android/internal/policy/impl/LockScreenWidgetManager;
    invoke-static {v0}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->access$000(Lcom/android/internal/policy/impl/PasswordUnlockScreen;)Lcom/android/internal/policy/impl/LockScreenWidgetManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/PasswordUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mLockScreenWidgetManager:Lcom/android/internal/policy/impl/LockScreenWidgetManager;
    invoke-static {v0}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->access$000(Lcom/android/internal/policy/impl/PasswordUnlockScreen;)Lcom/android/internal/policy/impl/LockScreenWidgetManager;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->updateDoubleTimeData(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 254
    :cond_0
    return-void
.end method

.method public onDualStateChanged(Z)V
    .locals 2
    .parameter "isManyou"

    .prologue
    .line 259
    const-string v0, "PasswordUnlockScreen"

    const-string v1, "......lockscreen call back onDualStateChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    iget-object v0, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/PasswordUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mLockScreenWidgetManager:Lcom/android/internal/policy/impl/LockScreenWidgetManager;
    invoke-static {v0}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->access$000(Lcom/android/internal/policy/impl/PasswordUnlockScreen;)Lcom/android/internal/policy/impl/LockScreenWidgetManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/PasswordUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mLockScreenWidgetManager:Lcom/android/internal/policy/impl/LockScreenWidgetManager;
    invoke-static {v0}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->access$000(Lcom/android/internal/policy/impl/PasswordUnlockScreen;)Lcom/android/internal/policy/impl/LockScreenWidgetManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->showDoubleTimeWidget(Z)V

    .line 264
    :cond_0
    return-void
.end method

.method public onMusicInfoUpated(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0
    .parameter "tzAlbumArtP"
    .parameter "bPlayingMusicP"
    .parameter "strSongNameP"

    .prologue
    .line 182
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallbackImpl;->onMusicInfoUpated(Ljava/lang/String;ZLjava/lang/String;)V

    .line 183
    return-void
.end method

.method public onShowCalendarNum(I)V
    .locals 1
    .parameter "shownum"

    .prologue
    .line 236
    iget-object v0, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/PasswordUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mLockScreenWidgetManager:Lcom/android/internal/policy/impl/LockScreenWidgetManager;
    invoke-static {v0}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->access$000(Lcom/android/internal/policy/impl/PasswordUnlockScreen;)Lcom/android/internal/policy/impl/LockScreenWidgetManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/PasswordUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mLockScreenWidgetManager:Lcom/android/internal/policy/impl/LockScreenWidgetManager;
    invoke-static {v0}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->access$000(Lcom/android/internal/policy/impl/PasswordUnlockScreen;)Lcom/android/internal/policy/impl/LockScreenWidgetManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->setUnreadCalendaNum(I)V

    .line 238
    iget-object v0, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/PasswordUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mLockScreenWidgetManager:Lcom/android/internal/policy/impl/LockScreenWidgetManager;
    invoke-static {v0}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->access$000(Lcom/android/internal/policy/impl/PasswordUnlockScreen;)Lcom/android/internal/policy/impl/LockScreenWidgetManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->updateMessageBoxData()V

    .line 240
    :cond_0
    return-void
.end method

.method public onShowEmailNum(I)V
    .locals 1
    .parameter "shownum"

    .prologue
    .line 227
    iget-object v0, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/PasswordUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mLockScreenWidgetManager:Lcom/android/internal/policy/impl/LockScreenWidgetManager;
    invoke-static {v0}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->access$000(Lcom/android/internal/policy/impl/PasswordUnlockScreen;)Lcom/android/internal/policy/impl/LockScreenWidgetManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/PasswordUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mLockScreenWidgetManager:Lcom/android/internal/policy/impl/LockScreenWidgetManager;
    invoke-static {v0}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->access$000(Lcom/android/internal/policy/impl/PasswordUnlockScreen;)Lcom/android/internal/policy/impl/LockScreenWidgetManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->setUnreadEmailNum(I)V

    .line 229
    iget-object v0, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/PasswordUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mLockScreenWidgetManager:Lcom/android/internal/policy/impl/LockScreenWidgetManager;
    invoke-static {v0}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->access$000(Lcom/android/internal/policy/impl/PasswordUnlockScreen;)Lcom/android/internal/policy/impl/LockScreenWidgetManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->updateMessageBoxData()V

    .line 231
    :cond_0
    return-void
.end method

.method public onShowMusic(Z)V
    .locals 1
    .parameter "mshowmusic"

    .prologue
    .line 173
    iget-object v0, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/PasswordUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mLockScreenWidgetManager:Lcom/android/internal/policy/impl/LockScreenWidgetManager;
    invoke-static {v0}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->access$000(Lcom/android/internal/policy/impl/PasswordUnlockScreen;)Lcom/android/internal/policy/impl/LockScreenWidgetManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/PasswordUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mLockScreenWidgetManager:Lcom/android/internal/policy/impl/LockScreenWidgetManager;
    invoke-static {v0}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->access$000(Lcom/android/internal/policy/impl/PasswordUnlockScreen;)Lcom/android/internal/policy/impl/LockScreenWidgetManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->addMusicWidget(Z)V

    .line 176
    :cond_0
    return-void
.end method

.method public onShowPhoneNum(I)V
    .locals 1
    .parameter "shownum"

    .prologue
    .line 218
    iget-object v0, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/PasswordUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mLockScreenWidgetManager:Lcom/android/internal/policy/impl/LockScreenWidgetManager;
    invoke-static {v0}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->access$000(Lcom/android/internal/policy/impl/PasswordUnlockScreen;)Lcom/android/internal/policy/impl/LockScreenWidgetManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/PasswordUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mLockScreenWidgetManager:Lcom/android/internal/policy/impl/LockScreenWidgetManager;
    invoke-static {v0}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->access$000(Lcom/android/internal/policy/impl/PasswordUnlockScreen;)Lcom/android/internal/policy/impl/LockScreenWidgetManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->setUnReadPhone(I)V

    .line 220
    iget-object v0, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/PasswordUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mLockScreenWidgetManager:Lcom/android/internal/policy/impl/LockScreenWidgetManager;
    invoke-static {v0}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->access$000(Lcom/android/internal/policy/impl/PasswordUnlockScreen;)Lcom/android/internal/policy/impl/LockScreenWidgetManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->updateMessageBoxData()V

    .line 222
    :cond_0
    return-void
.end method

.method public onShowSmsNum(I)V
    .locals 1
    .parameter "shownum"

    .prologue
    .line 209
    iget-object v0, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/PasswordUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mLockScreenWidgetManager:Lcom/android/internal/policy/impl/LockScreenWidgetManager;
    invoke-static {v0}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->access$000(Lcom/android/internal/policy/impl/PasswordUnlockScreen;)Lcom/android/internal/policy/impl/LockScreenWidgetManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/PasswordUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mLockScreenWidgetManager:Lcom/android/internal/policy/impl/LockScreenWidgetManager;
    invoke-static {v0}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->access$000(Lcom/android/internal/policy/impl/PasswordUnlockScreen;)Lcom/android/internal/policy/impl/LockScreenWidgetManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->setUnreadSmsNum(I)V

    .line 211
    iget-object v0, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/PasswordUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mLockScreenWidgetManager:Lcom/android/internal/policy/impl/LockScreenWidgetManager;
    invoke-static {v0}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->access$000(Lcom/android/internal/policy/impl/PasswordUnlockScreen;)Lcom/android/internal/policy/impl/LockScreenWidgetManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->updateMessageBoxData()V

    .line 213
    :cond_0
    return-void
.end method

.method public onWeatherInfoUpated(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 7
    .parameter "cityName"
    .parameter "strMinDegree"
    .parameter "strMaxDegree"
    .parameter "strWeatherRdes"
    .parameter "weatherType"
    .parameter "strExpDetail"

    .prologue
    .line 191
    iget-object v0, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/PasswordUnlockScreen;

    #setter for: Lcom/android/internal/policy/impl/PasswordUnlockScreen;->cityNameSave:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->access$102(Lcom/android/internal/policy/impl/PasswordUnlockScreen;Ljava/lang/String;)Ljava/lang/String;

    .line 199
    iget-object v0, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/PasswordUnlockScreen;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->getWeatherBitmap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 200
    .local v6, bit:Landroid/graphics/Bitmap;
    iget-object v0, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/PasswordUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mLockScreenWidgetManager:Lcom/android/internal/policy/impl/LockScreenWidgetManager;
    invoke-static {v0}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->access$000(Lcom/android/internal/policy/impl/PasswordUnlockScreen;)Lcom/android/internal/policy/impl/LockScreenWidgetManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/PasswordUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mLockScreenWidgetManager:Lcom/android/internal/policy/impl/LockScreenWidgetManager;
    invoke-static {v0}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->access$000(Lcom/android/internal/policy/impl/PasswordUnlockScreen;)Lcom/android/internal/policy/impl/LockScreenWidgetManager;

    move-result-object v0

    invoke-virtual {v0, v6, p6}, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->setWeatherBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 202
    iget-object v0, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/PasswordUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mLockScreenWidgetManager:Lcom/android/internal/policy/impl/LockScreenWidgetManager;
    invoke-static {v0}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->access$000(Lcom/android/internal/policy/impl/PasswordUnlockScreen;)Lcom/android/internal/policy/impl/LockScreenWidgetManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->updateWeatherBitmapResourse()V

    .line 204
    :cond_0
    return-void
.end method
