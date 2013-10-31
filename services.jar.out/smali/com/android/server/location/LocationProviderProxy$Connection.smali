.class Lcom/android/server/location/LocationProviderProxy$Connection;
.super Ljava/lang/Object;
.source "LocationProviderProxy.java"

# interfaces
.implements Landroid/content/ServiceConnection;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/LocationProviderProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Connection"
.end annotation


# instance fields
.field private mCachedAttributes:Lcom/android/internal/location/DummyLocationProvider;

.field private mProvider:Landroid/location/ILocationProvider;

.field final synthetic this$0:Lcom/android/server/location/LocationProviderProxy;


# direct methods
.method private constructor <init>(Lcom/android/server/location/LocationProviderProxy;)V
    .locals 0
    .parameter

    .prologue
    .line 86
    iput-object p1, p0, Lcom/android/server/location/LocationProviderProxy$Connection;->this$0:Lcom/android/server/location/LocationProviderProxy;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/location/LocationProviderProxy;Lcom/android/server/location/LocationProviderProxy$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/android/server/location/LocationProviderProxy$Connection;-><init>(Lcom/android/server/location/LocationProviderProxy;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized getCachedAttributes()Lcom/android/internal/location/DummyLocationProvider;
    .locals 1

    .prologue
    .line 116
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/LocationProviderProxy$Connection;->mCachedAttributes:Lcom/android/internal/location/DummyLocationProvider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getProvider()Landroid/location/ILocationProvider;
    .locals 1

    .prologue
    .line 112
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/LocationProviderProxy$Connection;->mProvider:Landroid/location/ILocationProvider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1
    .parameter "className"
    .parameter "service"

    .prologue
    .line 94
    monitor-enter p0

    .line 95
    :try_start_0
    invoke-static {p2}, Landroid/location/ILocationProvider$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/ILocationProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/LocationProviderProxy$Connection;->mProvider:Landroid/location/ILocationProvider;

    .line 96
    iget-object v0, p0, Lcom/android/server/location/LocationProviderProxy$Connection;->mProvider:Landroid/location/ILocationProvider;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/android/server/location/LocationProviderProxy$Connection;->this$0:Lcom/android/server/location/LocationProviderProxy;

    #getter for: Lcom/android/server/location/LocationProviderProxy;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/location/LocationProviderProxy;->access$100(Lcom/android/server/location/LocationProviderProxy;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 99
    :cond_0
    monitor-exit p0

    .line 100
    return-void

    .line 99
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1
    .parameter "className"

    .prologue
    .line 103
    monitor-enter p0

    .line 105
    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/LocationProviderProxy$Connection;->this$0:Lcom/android/server/location/LocationProviderProxy;

    invoke-virtual {v0}, Lcom/android/server/location/LocationProviderProxy;->reconnect()V

    .line 107
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/location/LocationProviderProxy$Connection;->mProvider:Landroid/location/ILocationProvider;

    .line 108
    monitor-exit p0

    .line 109
    return-void

    .line 108
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public run()V
    .locals 8

    .prologue
    .line 120
    iget-object v2, p0, Lcom/android/server/location/LocationProviderProxy$Connection;->this$0:Lcom/android/server/location/LocationProviderProxy;

    #getter for: Lcom/android/server/location/LocationProviderProxy;->mMutex:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/server/location/LocationProviderProxy;->access$200(Lcom/android/server/location/LocationProviderProxy;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 121
    :try_start_0
    iget-object v2, p0, Lcom/android/server/location/LocationProviderProxy$Connection;->this$0:Lcom/android/server/location/LocationProviderProxy;

    #getter for: Lcom/android/server/location/LocationProviderProxy;->mServiceConnection:Lcom/android/server/location/LocationProviderProxy$Connection;
    invoke-static {v2}, Lcom/android/server/location/LocationProviderProxy;->access$300(Lcom/android/server/location/LocationProviderProxy;)Lcom/android/server/location/LocationProviderProxy$Connection;

    move-result-object v2

    if-eq v2, p0, :cond_0

    .line 123
    monitor-exit v3

    .line 165
    :goto_0
    return-void

    .line 125
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/location/LocationProviderProxy$Connection;->getProvider()Landroid/location/ILocationProvider;

    move-result-object v1

    .line 126
    .local v1, provider:Landroid/location/ILocationProvider;
    if-nez v1, :cond_1

    .line 127
    monitor-exit v3

    goto :goto_0

    .line 164
    .end local v1           #provider:Landroid/location/ILocationProvider;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 132
    .restart local v1       #provider:Landroid/location/ILocationProvider;
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/android/server/location/LocationProviderProxy$Connection;->this$0:Lcom/android/server/location/LocationProviderProxy;

    #getter for: Lcom/android/server/location/LocationProviderProxy;->mEnabled:Z
    invoke-static {v2}, Lcom/android/server/location/LocationProviderProxy;->access$400(Lcom/android/server/location/LocationProviderProxy;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 133
    invoke-interface {v1}, Landroid/location/ILocationProvider;->enable()V

    .line 135
    :cond_2
    iget-object v2, p0, Lcom/android/server/location/LocationProviderProxy$Connection;->this$0:Lcom/android/server/location/LocationProviderProxy;

    #getter for: Lcom/android/server/location/LocationProviderProxy;->mLocationTracking:Z
    invoke-static {v2}, Lcom/android/server/location/LocationProviderProxy;->access$500(Lcom/android/server/location/LocationProviderProxy;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 136
    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/location/ILocationProvider;->enableLocationTracking(Z)V

    .line 138
    :cond_3
    iget-object v2, p0, Lcom/android/server/location/LocationProviderProxy$Connection;->this$0:Lcom/android/server/location/LocationProviderProxy;

    #getter for: Lcom/android/server/location/LocationProviderProxy;->mMinTime:J
    invoke-static {v2}, Lcom/android/server/location/LocationProviderProxy;->access$600(Lcom/android/server/location/LocationProviderProxy;)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-ltz v2, :cond_4

    .line 139
    iget-object v2, p0, Lcom/android/server/location/LocationProviderProxy$Connection;->this$0:Lcom/android/server/location/LocationProviderProxy;

    #getter for: Lcom/android/server/location/LocationProviderProxy;->mMinTime:J
    invoke-static {v2}, Lcom/android/server/location/LocationProviderProxy;->access$600(Lcom/android/server/location/LocationProviderProxy;)J

    move-result-wide v4

    iget-object v2, p0, Lcom/android/server/location/LocationProviderProxy$Connection;->this$0:Lcom/android/server/location/LocationProviderProxy;

    #getter for: Lcom/android/server/location/LocationProviderProxy;->mMinTimeSource:Landroid/os/WorkSource;
    invoke-static {v2}, Lcom/android/server/location/LocationProviderProxy;->access$700(Lcom/android/server/location/LocationProviderProxy;)Landroid/os/WorkSource;

    move-result-object v2

    invoke-interface {v1, v4, v5, v2}, Landroid/location/ILocationProvider;->setMinTime(JLandroid/os/WorkSource;)V

    .line 141
    :cond_4
    iget-object v2, p0, Lcom/android/server/location/LocationProviderProxy$Connection;->this$0:Lcom/android/server/location/LocationProviderProxy;

    #getter for: Lcom/android/server/location/LocationProviderProxy;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v2}, Lcom/android/server/location/LocationProviderProxy;->access$800(Lcom/android/server/location/LocationProviderProxy;)Landroid/net/NetworkInfo;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 142
    iget-object v2, p0, Lcom/android/server/location/LocationProviderProxy$Connection;->this$0:Lcom/android/server/location/LocationProviderProxy;

    #getter for: Lcom/android/server/location/LocationProviderProxy;->mNetworkState:I
    invoke-static {v2}, Lcom/android/server/location/LocationProviderProxy;->access$900(Lcom/android/server/location/LocationProviderProxy;)I

    move-result v2

    iget-object v4, p0, Lcom/android/server/location/LocationProviderProxy$Connection;->this$0:Lcom/android/server/location/LocationProviderProxy;

    #getter for: Lcom/android/server/location/LocationProviderProxy;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v4}, Lcom/android/server/location/LocationProviderProxy;->access$800(Lcom/android/server/location/LocationProviderProxy;)Landroid/net/NetworkInfo;

    move-result-object v4

    invoke-interface {v1, v2, v4}, Landroid/location/ILocationProvider;->updateNetworkState(ILandroid/net/NetworkInfo;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 148
    :cond_5
    :goto_1
    :try_start_2
    iget-object v2, p0, Lcom/android/server/location/LocationProviderProxy$Connection;->mCachedAttributes:Lcom/android/internal/location/DummyLocationProvider;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v2, :cond_6

    .line 150
    :try_start_3
    new-instance v2, Lcom/android/internal/location/DummyLocationProvider;

    iget-object v4, p0, Lcom/android/server/location/LocationProviderProxy$Connection;->this$0:Lcom/android/server/location/LocationProviderProxy;

    #getter for: Lcom/android/server/location/LocationProviderProxy;->mName:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/server/location/LocationProviderProxy;->access$1000(Lcom/android/server/location/LocationProviderProxy;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v2, v4, v5}, Lcom/android/internal/location/DummyLocationProvider;-><init>(Ljava/lang/String;Landroid/location/ILocationManager;)V

    iput-object v2, p0, Lcom/android/server/location/LocationProviderProxy$Connection;->mCachedAttributes:Lcom/android/internal/location/DummyLocationProvider;

    .line 151
    iget-object v2, p0, Lcom/android/server/location/LocationProviderProxy$Connection;->mCachedAttributes:Lcom/android/internal/location/DummyLocationProvider;

    invoke-interface {v1}, Landroid/location/ILocationProvider;->requiresNetwork()Z

    move-result v4

    invoke-virtual {v2, v4}, Lcom/android/internal/location/DummyLocationProvider;->setRequiresNetwork(Z)V

    .line 152
    iget-object v2, p0, Lcom/android/server/location/LocationProviderProxy$Connection;->mCachedAttributes:Lcom/android/internal/location/DummyLocationProvider;

    invoke-interface {v1}, Landroid/location/ILocationProvider;->requiresSatellite()Z

    move-result v4

    invoke-virtual {v2, v4}, Lcom/android/internal/location/DummyLocationProvider;->setRequiresSatellite(Z)V

    .line 153
    iget-object v2, p0, Lcom/android/server/location/LocationProviderProxy$Connection;->mCachedAttributes:Lcom/android/internal/location/DummyLocationProvider;

    invoke-interface {v1}, Landroid/location/ILocationProvider;->requiresCell()Z

    move-result v4

    invoke-virtual {v2, v4}, Lcom/android/internal/location/DummyLocationProvider;->setRequiresCell(Z)V

    .line 154
    iget-object v2, p0, Lcom/android/server/location/LocationProviderProxy$Connection;->mCachedAttributes:Lcom/android/internal/location/DummyLocationProvider;

    invoke-interface {v1}, Landroid/location/ILocationProvider;->hasMonetaryCost()Z

    move-result v4

    invoke-virtual {v2, v4}, Lcom/android/internal/location/DummyLocationProvider;->setHasMonetaryCost(Z)V

    .line 155
    iget-object v2, p0, Lcom/android/server/location/LocationProviderProxy$Connection;->mCachedAttributes:Lcom/android/internal/location/DummyLocationProvider;

    invoke-interface {v1}, Landroid/location/ILocationProvider;->supportsAltitude()Z

    move-result v4

    invoke-virtual {v2, v4}, Lcom/android/internal/location/DummyLocationProvider;->setSupportsAltitude(Z)V

    .line 156
    iget-object v2, p0, Lcom/android/server/location/LocationProviderProxy$Connection;->mCachedAttributes:Lcom/android/internal/location/DummyLocationProvider;

    invoke-interface {v1}, Landroid/location/ILocationProvider;->supportsSpeed()Z

    move-result v4

    invoke-virtual {v2, v4}, Lcom/android/internal/location/DummyLocationProvider;->setSupportsSpeed(Z)V

    .line 157
    iget-object v2, p0, Lcom/android/server/location/LocationProviderProxy$Connection;->mCachedAttributes:Lcom/android/internal/location/DummyLocationProvider;

    invoke-interface {v1}, Landroid/location/ILocationProvider;->supportsBearing()Z

    move-result v4

    invoke-virtual {v2, v4}, Lcom/android/internal/location/DummyLocationProvider;->setSupportsBearing(Z)V

    .line 158
    iget-object v2, p0, Lcom/android/server/location/LocationProviderProxy$Connection;->mCachedAttributes:Lcom/android/internal/location/DummyLocationProvider;

    invoke-interface {v1}, Landroid/location/ILocationProvider;->getPowerRequirement()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/android/internal/location/DummyLocationProvider;->setPowerRequirement(I)V

    .line 159
    iget-object v2, p0, Lcom/android/server/location/LocationProviderProxy$Connection;->mCachedAttributes:Lcom/android/internal/location/DummyLocationProvider;

    invoke-interface {v1}, Landroid/location/ILocationProvider;->getAccuracy()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/android/internal/location/DummyLocationProvider;->setAccuracy(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    .line 164
    :cond_6
    :goto_2
    :try_start_4
    monitor-exit v3

    goto/16 :goto_0

    .line 160
    :catch_0
    move-exception v0

    .line 161
    .local v0, e:Landroid/os/RemoteException;
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/location/LocationProviderProxy$Connection;->mCachedAttributes:Lcom/android/internal/location/DummyLocationProvider;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 144
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v2

    goto :goto_1
.end method
