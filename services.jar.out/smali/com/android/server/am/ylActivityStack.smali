.class public final Lcom/android/server/am/ylActivityStack;
.super Ljava/lang/Object;
.source "ylActivityStack.java"


# static fields
.field static SystemUtil:Ljava/lang/Class; = null

.field private static final TAG:Ljava/lang/String; = "ylActivityStack"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 53
    :try_start_0
    const-string v1, "com.yulong.android.server.systeminterface.util.SystemUtil"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/android/server/am/ylActivityStack;->SystemUtil:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    .local v0, e:Ljava/lang/ClassNotFoundException;
    :goto_0
    return-void

    .line 54
    .end local v0           #e:Ljava/lang/ClassNotFoundException;
    :catch_0
    move-exception v0

    .line 55
    .restart local v0       #e:Ljava/lang/ClassNotFoundException;
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 61
    return-void
.end method

.method private static SystemUtil_getYLParam(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "key"

    .prologue
    const/4 v3, 0x0

    .line 67
    :try_start_0
    sget-object v2, Lcom/android/server/am/ylActivityStack;->SystemUtil:Ljava/lang/Class;

    const-string v4, "getYLParam"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 68
    .local v1, method:Ljava/lang/reflect/Method;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 69
    const/4 v2, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    invoke-virtual {v1, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    .end local v1           #method:Ljava/lang/reflect/Method;
    :goto_0
    return-object v2

    .line 70
    :catch_0
    move-exception v0

    .line 71
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v2, v3

    .line 73
    goto :goto_0
.end method

.method private static isBeiDaoMode()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 78
    const-string v2, "GUARD"

    invoke-static {v2}, Lcom/android/server/am/ylActivityStack;->SystemUtil_getYLParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 80
    .local v0, againGuard:Ljava/lang/String;
    if-eqz v0, :cond_1

    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 82
    const-string v2, "2"

    const-string v3, "persist.sys.fangdaomode"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 95
    :cond_0
    :goto_0
    return v1

    .line 86
    :cond_1
    if-eqz v0, :cond_2

    const-string v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 88
    const-string v2, "ylActivityStack"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "persist.sys.fangdaomode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "persist.sys.fangdaomode"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    const-string v2, "2"

    const-string v3, "persist.sys.fangdaomode"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 95
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isFilterActivity(Landroid/content/Intent;Landroid/content/Context;)Z
    .locals 8
    .parameter "intent"
    .parameter "context"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 242
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    if-eqz v6, :cond_1

    move v0, v4

    .line 243
    .local v0, componentSpecifiedInModifiedIntent:Z
    :goto_0
    if-eqz v0, :cond_4

    .line 244
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 245
    .local v3, targetPackageName:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    .line 248
    .local v2, targetClassName:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/am/ylActivityStack;->isPhoneRinging()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 249
    const/4 v1, 0x0

    .line 250
    .local v1, oked:Z
    const-string v6, "com.android.phone.InCallScreen"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 251
    const/4 v1, 0x1

    .line 260
    :cond_0
    :goto_1
    if-nez v1, :cond_4

    .line 261
    const-string v5, "ylActivityStack"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "The phone is ringing, request to start "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is canceled."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    .end local v1           #oked:Z
    .end local v2           #targetClassName:Ljava/lang/String;
    .end local v3           #targetPackageName:Ljava/lang/String;
    :goto_2
    return v4

    .end local v0           #componentSpecifiedInModifiedIntent:Z
    :cond_1
    move v0, v5

    .line 242
    goto :goto_0

    .line 252
    .restart local v0       #componentSpecifiedInModifiedIntent:Z
    .restart local v1       #oked:Z
    .restart local v2       #targetClassName:Ljava/lang/String;
    .restart local v3       #targetPackageName:Ljava/lang/String;
    :cond_2
    const-string v6, "com.android.mms.ui.ComposeMessageActivity"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v6, "android.intent.action.SENDTO"

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 254
    const/4 v1, 0x1

    goto :goto_1

    .line 255
    :cond_3
    const-string v6, "com.yulong.android.mms.ui.MmsComposeMessageActivity"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "android.intent.action.SENDTO"

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 257
    const/4 v1, 0x1

    goto :goto_1

    .end local v1           #oked:Z
    .end local v2           #targetClassName:Ljava/lang/String;
    .end local v3           #targetPackageName:Ljava/lang/String;
    :cond_4
    move v4, v5

    .line 297
    goto :goto_2
.end method

.method public static isLaunchingActivityBeCanceled(Landroid/content/Intent;)Z
    .locals 8
    .parameter "intent"

    .prologue
    .line 106
    const/4 v2, 0x0

    .line 107
    .local v2, result:Z
    invoke-static {}, Lcom/android/server/am/ylActivityStack;->isBeiDaoMode()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 109
    const/4 v1, 0x0

    .line 110
    .local v1, oked:Z
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    if-eqz v5, :cond_4

    const/4 v0, 0x1

    .line 112
    .local v0, componentSpecified:Z
    :goto_0
    if-eqz v0, :cond_5

    .line 114
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    .line 115
    .local v3, targetClassName:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 117
    .local v4, targetPackageName:Ljava/lang/String;
    if-eqz v3, :cond_0

    const-string v5, "com.yulong.android.contacts.dial.DialActivity"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 119
    const/4 v1, 0x1

    .line 121
    :cond_0
    if-eqz v4, :cond_1

    const-string v5, "com.android.phone"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 123
    const/4 v1, 0x1

    .line 125
    :cond_1
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v6, "android.intent.action.MAIN"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "android.intent.category.HOME"

    invoke-virtual {p0, v5}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 128
    const/4 v1, 0x1

    .line 130
    :cond_2
    if-nez v1, :cond_3

    .line 131
    const-string v5, "ylActivityStack"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "The device is in Beidao mode, request to start "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is canceled."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    const/4 v2, 0x1

    .line 146
    .end local v0           #componentSpecified:Z
    .end local v1           #oked:Z
    .end local v3           #targetClassName:Ljava/lang/String;
    .end local v4           #targetPackageName:Ljava/lang/String;
    :cond_3
    :goto_1
    return v2

    .line 110
    .restart local v1       #oked:Z
    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    .line 136
    .restart local v0       #componentSpecified:Z
    :cond_5
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_6

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v6, "android.intent.action.CALL_PRIVILEGED"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 138
    const/4 v1, 0x1

    .line 140
    :cond_6
    if-nez v1, :cond_3

    .line 141
    const/4 v2, 0x1

    goto :goto_1
.end method

.method private static isPhoneRinging()Z
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 213
    const/4 v1, 0x0

    .line 216
    .local v1, incomingRinging:Z
    :try_start_0
    const-string v4, "phone"

    invoke-static {v4}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 219
    .local v2, telephonyService:Lcom/android/internal/telephony/ITelephony;
    if-nez v2, :cond_0

    .line 229
    .end local v2           #telephonyService:Lcom/android/internal/telephony/ITelephony;
    :goto_0
    return v1

    .line 223
    .restart local v2       #telephonyService:Lcom/android/internal/telephony/ITelephony;
    :cond_0
    const/4 v4, 0x1

    invoke-interface {v2, v4}, Lcom/android/internal/telephony/ITelephony;->isDualRinging(I)Z

    move-result v4

    if-nez v4, :cond_1

    const/4 v4, 0x2

    invoke-interface {v2, v4}, Lcom/android/internal/telephony/ITelephony;->isDualRinging(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    move v1, v3

    :goto_1
    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 225
    .end local v2           #telephonyService:Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v0

    .line 226
    .local v0, ex:Landroid/os/RemoteException;
    const-string v3, "ylActivityStack"

    const-string v4, "RemoteException from get telephony service"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static killRedundantHomeApps(Ljava/util/List;Landroid/content/Context;)V
    .locals 7
    .parameter
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 154
    .local p0, homeActivities:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v3, Ljava/util/ArrayList;

    const/4 v5, 0x1

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 155
    .local v3, processesToKill:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-nez p0, :cond_1

    const/4 v1, 0x0

    .line 156
    .local v1, count:I
    :goto_0
    monitor-enter v3

    .line 157
    :try_start_0
    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 159
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v1, :cond_2

    .line 160
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    iget-object v0, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 161
    .local v0, ai:Landroid/content/pm/ActivityInfo;
    iget-object v5, v0, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 164
    iget-object v5, v0, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    const-string v6, "android.process.acore"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 165
    new-instance v4, Landroid/content/ComponentName;

    const-string v5, "telecom.mdesk"

    const-string v6, "telecom.mdesk.sync.SyncronizeService"

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    .local v4, telecomSyncronizeService:Landroid/content/ComponentName;
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v5, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 168
    const-string v5, "telecom.mdesk:remote"

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 159
    .end local v4           #telecomSyncronizeService:Landroid/content/ComponentName;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 155
    .end local v0           #ai:Landroid/content/pm/ActivityInfo;
    .end local v1           #count:I
    .end local v2           #i:I
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_0

    .line 171
    .restart local v1       #count:I
    .restart local v2       #i:I
    :cond_2
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 173
    new-instance v5, Lcom/android/server/am/ylActivityStack$1;

    invoke-direct {v5, v3}, Lcom/android/server/am/ylActivityStack$1;-><init>(Ljava/util/List;)V

    invoke-virtual {v5}, Lcom/android/server/am/ylActivityStack$1;->start()V

    .line 205
    return-void

    .line 171
    .end local v2           #i:I
    :catchall_0
    move-exception v5

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5
.end method
