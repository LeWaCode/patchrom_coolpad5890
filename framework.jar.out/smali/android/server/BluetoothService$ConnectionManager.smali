.class Landroid/server/BluetoothService$ConnectionManager;
.super Ljava/lang/Object;
.source "BluetoothService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/server/BluetoothService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectionManager"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/server/BluetoothService$ConnectionManager$BtPolicyCallback;
    }
.end annotation


# instance fields
.field private mA2dpAudioActive:Z

.field private mBtPolicyHandle:I

.field private mBtPolicyHandlesAvailable:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mConnectionList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Landroid/server/BluetoothService$ConnectionManager$BtPolicyCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mScoAudioActive:Z

.field private mUseWifiForBtTransfers:Z

.field final synthetic this$0:Landroid/server/BluetoothService;


# direct methods
.method private constructor <init>(Landroid/server/BluetoothService;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1252
    iput-object p1, p0, Landroid/server/BluetoothService$ConnectionManager;->this$0:Landroid/server/BluetoothService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1253
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Landroid/server/BluetoothService$ConnectionManager;->mConnectionList:Ljava/util/LinkedList;

    .line 1254
    iput-boolean v1, p0, Landroid/server/BluetoothService$ConnectionManager;->mScoAudioActive:Z

    .line 1255
    iput-boolean v1, p0, Landroid/server/BluetoothService$ConnectionManager;->mA2dpAudioActive:Z

    .line 1256
    iput-boolean v2, p0, Landroid/server/BluetoothService$ConnectionManager;->mUseWifiForBtTransfers:Z

    .line 1258
    iput v2, p0, Landroid/server/BluetoothService$ConnectionManager;->mBtPolicyHandle:I

    .line 1259
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Landroid/server/BluetoothService$ConnectionManager;->mBtPolicyHandlesAvailable:Ljava/util/LinkedList;

    .line 1261
    return-void
.end method

.method synthetic constructor <init>(Landroid/server/BluetoothService;Landroid/server/BluetoothService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1252
    invoke-direct {p0, p1}, Landroid/server/BluetoothService$ConnectionManager;-><init>(Landroid/server/BluetoothService;)V

    return-void
.end method

.method static synthetic access$400(Landroid/server/BluetoothService$ConnectionManager;)Ljava/util/LinkedList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1252
    iget-object v0, p0, Landroid/server/BluetoothService$ConnectionManager;->mBtPolicyHandlesAvailable:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$500(Landroid/server/BluetoothService$ConnectionManager;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1252
    invoke-direct {p0, p1}, Landroid/server/BluetoothService$ConnectionManager;->validateAmpPolicy(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$600(Landroid/server/BluetoothService$ConnectionManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 1252
    iget v0, p0, Landroid/server/BluetoothService$ConnectionManager;->mBtPolicyHandle:I

    return v0
.end method

.method static synthetic access$604(Landroid/server/BluetoothService$ConnectionManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 1252
    iget v0, p0, Landroid/server/BluetoothService$ConnectionManager;->mBtPolicyHandle:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/server/BluetoothService$ConnectionManager;->mBtPolicyHandle:I

    return v0
.end method

.method private updateConnectionAmpPolicies()Z
    .locals 7

    .prologue
    .line 1383
    const/4 v3, 0x1

    .line 1384
    .local v3, result:Z
    iget-object v5, p0, Landroid/server/BluetoothService$ConnectionManager;->mConnectionList:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->listIterator()Ljava/util/ListIterator;

    move-result-object v2

    .line 1385
    .local v2, it:Ljava/util/ListIterator;,"Ljava/util/ListIterator<Landroid/server/BluetoothService$ConnectionManager$BtPolicyCallback;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/ListIterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1386
    invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/server/BluetoothService$ConnectionManager$BtPolicyCallback;

    .line 1387
    .local v4, thisBtPolicyCallback:Landroid/server/BluetoothService$ConnectionManager$BtPolicyCallback;
    iget v5, v4, Landroid/server/BluetoothService$ConnectionManager$BtPolicyCallback;->mDesiredAmpPolicy:I

    invoke-virtual {p0, v5}, Landroid/server/BluetoothService$ConnectionManager;->getEffectiveAmpPolicy(I)I

    move-result v0

    .line 1388
    .local v0, allowedPolicy:I
    iget v5, v4, Landroid/server/BluetoothService$ConnectionManager$BtPolicyCallback;->mCurrentAmpPolicy:I

    if-eq v0, v5, :cond_0

    .line 1390
    :try_start_0
    iget-object v5, v4, Landroid/server/BluetoothService$ConnectionManager$BtPolicyCallback;->mCallback:Landroid/bluetooth/IBluetoothCallback;

    invoke-interface {v5, v0}, Landroid/bluetooth/IBluetoothCallback;->onAmpPolicyChange(I)V

    .line 1391
    iput v0, v4, Landroid/server/BluetoothService$ConnectionManager$BtPolicyCallback;->mCurrentAmpPolicy:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1392
    :catch_0
    move-exception v1

    .line 1393
    .local v1, e:Landroid/os/RemoteException;
    const-string v5, "BluetoothService"

    const-string v6, ""

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1394
    const/4 v3, 0x0

    goto :goto_0

    .line 1398
    .end local v0           #allowedPolicy:I
    .end local v1           #e:Landroid/os/RemoteException;
    .end local v4           #thisBtPolicyCallback:Landroid/server/BluetoothService$ConnectionManager$BtPolicyCallback;
    :cond_1
    return v3
.end method

.method private validateAmpPolicy(I)I
    .locals 1
    .parameter "policy"

    .prologue
    .line 1298
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 1302
    .end local p1
    :cond_0
    :goto_0
    return p1

    .restart local p1
    :cond_1
    const/4 p1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized deregisterEl2capConnection(I)V
    .locals 3
    .parameter "handle"

    .prologue
    .line 1319
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Landroid/server/BluetoothService$ConnectionManager;->mConnectionList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    .line 1320
    .local v0, it:Ljava/util/ListIterator;,"Ljava/util/ListIterator<Landroid/server/BluetoothService$ConnectionManager$BtPolicyCallback;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1321
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/server/BluetoothService$ConnectionManager$BtPolicyCallback;

    .line 1322
    .local v1, thisBtPolicyCallback:Landroid/server/BluetoothService$ConnectionManager$BtPolicyCallback;
    iget v2, v1, Landroid/server/BluetoothService$ConnectionManager$BtPolicyCallback;->mHandle:I

    if-ne v2, p1, :cond_0

    .line 1323
    invoke-virtual {v1, p1}, Landroid/server/BluetoothService$ConnectionManager$BtPolicyCallback;->removeHandle(I)Z

    .line 1324
    iget-object v2, p0, Landroid/server/BluetoothService$ConnectionManager;->mConnectionList:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1328
    .end local v1           #thisBtPolicyCallback:Landroid/server/BluetoothService$ConnectionManager$BtPolicyCallback;
    :cond_1
    monitor-exit p0

    return-void

    .line 1319
    .end local v0           #it:Ljava/util/ListIterator;,"Ljava/util/ListIterator<Landroid/server/BluetoothService$ConnectionManager$BtPolicyCallback;>;"
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized getEffectiveAmpPolicy(I)I
    .locals 1
    .parameter "policy"

    .prologue
    .line 1306
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/server/BluetoothService$ConnectionManager;->mScoAudioActive:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/server/BluetoothService$ConnectionManager;->mA2dpAudioActive:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/server/BluetoothService$ConnectionManager;->mUseWifiForBtTransfers:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 1307
    :cond_0
    const/4 v0, 0x0

    .line 1309
    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    :try_start_1
    invoke-direct {p0, p1}, Landroid/server/BluetoothService$ConnectionManager;->validateAmpPolicy(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 1306
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized registerEl2capConnection(Landroid/bluetooth/IBluetoothCallback;I)I
    .locals 2
    .parameter "callback"
    .parameter "initialPolicy"

    .prologue
    .line 1313
    monitor-enter p0

    :try_start_0
    new-instance v0, Landroid/server/BluetoothService$ConnectionManager$BtPolicyCallback;

    invoke-direct {v0, p0, p1, p2}, Landroid/server/BluetoothService$ConnectionManager$BtPolicyCallback;-><init>(Landroid/server/BluetoothService$ConnectionManager;Landroid/bluetooth/IBluetoothCallback;I)V

    .line 1314
    .local v0, bpc:Landroid/server/BluetoothService$ConnectionManager$BtPolicyCallback;
    iget-object v1, p0, Landroid/server/BluetoothService$ConnectionManager;->mConnectionList:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 1315
    invoke-virtual {v0}, Landroid/server/BluetoothService$ConnectionManager$BtPolicyCallback;->getHandle()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit p0

    return v1

    .line 1313
    .end local v0           #bpc:Landroid/server/BluetoothService$ConnectionManager$BtPolicyCallback;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setA2dpAudioActive(Z)V
    .locals 3
    .parameter "active"

    .prologue
    .line 1364
    monitor-enter p0

    :try_start_0
    const-string v0, "BluetoothService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setA2dpAudioActive(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1366
    iget-boolean v0, p0, Landroid/server/BluetoothService$ConnectionManager;->mA2dpAudioActive:Z

    if-eq v0, p1, :cond_0

    .line 1367
    iput-boolean p1, p0, Landroid/server/BluetoothService$ConnectionManager;->mA2dpAudioActive:Z

    .line 1368
    invoke-direct {p0}, Landroid/server/BluetoothService$ConnectionManager;->updateConnectionAmpPolicies()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1370
    :cond_0
    monitor-exit p0

    return-void

    .line 1364
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setDesiredAmpPolicy(II)Z
    .locals 7
    .parameter "handle"
    .parameter "policy"

    .prologue
    .line 1331
    monitor-enter p0

    const/4 v3, 0x1

    .line 1332
    .local v3, result:Z
    :try_start_0
    iget-object v5, p0, Landroid/server/BluetoothService$ConnectionManager;->mConnectionList:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->listIterator()Ljava/util/ListIterator;

    move-result-object v2

    .line 1333
    .local v2, it:Ljava/util/ListIterator;,"Ljava/util/ListIterator<Landroid/server/BluetoothService$ConnectionManager$BtPolicyCallback;>;"
    invoke-direct {p0, p2}, Landroid/server/BluetoothService$ConnectionManager;->validateAmpPolicy(I)I

    move-result p2

    .line 1334
    invoke-virtual {p0, p2}, Landroid/server/BluetoothService$ConnectionManager;->getEffectiveAmpPolicy(I)I

    move-result v0

    .line 1335
    .local v0, allowedPolicy:I
    :cond_0
    invoke-interface {v2}, Ljava/util/ListIterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1336
    invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/server/BluetoothService$ConnectionManager$BtPolicyCallback;

    .line 1337
    .local v4, thisBtPolicyCallback:Landroid/server/BluetoothService$ConnectionManager$BtPolicyCallback;
    iget v5, v4, Landroid/server/BluetoothService$ConnectionManager$BtPolicyCallback;->mHandle:I

    if-ne v5, p1, :cond_0

    .line 1338
    iget v5, v4, Landroid/server/BluetoothService$ConnectionManager$BtPolicyCallback;->mCurrentAmpPolicy:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v5, v0, :cond_1

    .line 1340
    :try_start_1
    iget-object v5, v4, Landroid/server/BluetoothService$ConnectionManager$BtPolicyCallback;->mCallback:Landroid/bluetooth/IBluetoothCallback;

    invoke-interface {v5, v0}, Landroid/bluetooth/IBluetoothCallback;->onAmpPolicyChange(I)V

    .line 1341
    iput v0, v4, Landroid/server/BluetoothService$ConnectionManager$BtPolicyCallback;->mCurrentAmpPolicy:I

    .line 1342
    iput p2, v4, Landroid/server/BluetoothService$ConnectionManager$BtPolicyCallback;->mDesiredAmpPolicy:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1351
    .end local v4           #thisBtPolicyCallback:Landroid/server/BluetoothService$ConnectionManager$BtPolicyCallback;
    :cond_1
    :goto_0
    monitor-exit p0

    return v3

    .line 1343
    .restart local v4       #thisBtPolicyCallback:Landroid/server/BluetoothService$ConnectionManager$BtPolicyCallback;
    :catch_0
    move-exception v1

    .line 1344
    .local v1, e:Landroid/os/RemoteException;
    :try_start_2
    const-string v5, "BluetoothService"

    const-string v6, ""

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1345
    const/4 v3, 0x0

    .line 1346
    goto :goto_0

    .line 1331
    .end local v0           #allowedPolicy:I
    .end local v1           #e:Landroid/os/RemoteException;
    .end local v2           #it:Ljava/util/ListIterator;,"Ljava/util/ListIterator<Landroid/server/BluetoothService$ConnectionManager$BtPolicyCallback;>;"
    .end local v4           #thisBtPolicyCallback:Landroid/server/BluetoothService$ConnectionManager$BtPolicyCallback;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public declared-synchronized setScoAudioActive(Z)V
    .locals 3
    .parameter "active"

    .prologue
    .line 1355
    monitor-enter p0

    :try_start_0
    const-string v0, "BluetoothService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setScoAudioActive(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1357
    iget-boolean v0, p0, Landroid/server/BluetoothService$ConnectionManager;->mScoAudioActive:Z

    if-eq v0, p1, :cond_0

    .line 1358
    iput-boolean p1, p0, Landroid/server/BluetoothService$ConnectionManager;->mScoAudioActive:Z

    .line 1359
    invoke-direct {p0}, Landroid/server/BluetoothService$ConnectionManager;->updateConnectionAmpPolicies()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1361
    :cond_0
    monitor-exit p0

    return-void

    .line 1355
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setUseWifiForBtTransfers(Z)V
    .locals 3
    .parameter "useWifi"

    .prologue
    .line 1373
    monitor-enter p0

    :try_start_0
    const-string v0, "BluetoothService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setUseWifiForBtTransfers(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1375
    iget-boolean v0, p0, Landroid/server/BluetoothService$ConnectionManager;->mUseWifiForBtTransfers:Z

    if-eq v0, p1, :cond_0

    .line 1376
    iput-boolean p1, p0, Landroid/server/BluetoothService$ConnectionManager;->mUseWifiForBtTransfers:Z

    .line 1377
    invoke-direct {p0}, Landroid/server/BluetoothService$ConnectionManager;->updateConnectionAmpPolicies()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1379
    :cond_0
    monitor-exit p0

    return-void

    .line 1373
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
