.class public final Landroid/app/ActivityThread;
.super Ljava/lang/Object;
.source "ActivityThread.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ActivityThread$ProviderRefCount;,
        Landroid/app/ActivityThread$StopInfo;,
        Landroid/app/ActivityThread$ResourcesKey;,
        Landroid/app/ActivityThread$GcIdler;,
        Landroid/app/ActivityThread$Idler;,
        Landroid/app/ActivityThread$H;,
        Landroid/app/ActivityThread$ApplicationThread;,
        Landroid/app/ActivityThread$UpdateCompatibilityData;,
        Landroid/app/ActivityThread$DumpHeapData;,
        Landroid/app/ActivityThread$ProfilerControlData;,
        Landroid/app/ActivityThread$ContextCleanupInfo;,
        Landroid/app/ActivityThread$ResultData;,
        Landroid/app/ActivityThread$DumpComponentInfo;,
        Landroid/app/ActivityThread$Profiler;,
        Landroid/app/ActivityThread$AppBindData;,
        Landroid/app/ActivityThread$ServiceArgsData;,
        Landroid/app/ActivityThread$BindServiceData;,
        Landroid/app/ActivityThread$CreateServiceData;,
        Landroid/app/ActivityThread$CreateBackupAgentData;,
        Landroid/app/ActivityThread$ReceiverData;,
        Landroid/app/ActivityThread$NewIntentData;,
        Landroid/app/ActivityThread$ProviderClientRecord;,
        Landroid/app/ActivityThread$ActivityClientRecord;,
        Landroid/app/ActivityThread$Injector;
    }
.end annotation


# static fields
.field private static final DEBUG_BACKUP:Z = false

.field public static final DEBUG_BROADCAST:Z = false

.field private static final DEBUG_CONFIGURATION:Z = false

.field private static final DEBUG_MEMORY_TRIM:Z = false

.field static final DEBUG_MESSAGES:Z = false

.field private static final DEBUG_PROVIDER:Z = false

.field private static final DEBUG_RESULTS:Z = false

.field private static final DEBUG_SERVICE:Z = false

.field private static final LOG_ON_PAUSE_CALLED:I = 0x7545

.field private static final LOG_ON_RESUME_CALLED:I = 0x7546

.field private static final MIN_TIME_BETWEEN_GCS:J = 0x1388L

.field private static final PATTERN_SEMICOLON:Ljava/util/regex/Pattern; = null

.field private static final SQLITE_MEM_RELEASED_EVENT_LOG_TAG:I = 0x124fb

.field public static final TAG:Ljava/lang/String; = "ActivityThread"

.field private static final THUMBNAIL_FORMAT:Landroid/graphics/Bitmap$Config;

.field static final localLOGV:Z

.field static mSystemContext:Landroid/app/ContextImpl;

.field static sAssetRedirectionManager:Lcom/android/internal/app/IAssetRedirectionManager;
    .annotation build Landroid/annotation/LewaHook;
        value = .enum Landroid/annotation/LewaHook$LewaHookType;->NEW_FIELD:Landroid/annotation/LewaHook$LewaHookType;
    .end annotation
.end field

.field private static final sCurrentBroadcastIntent:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field static sMainThreadHandler:Landroid/os/Handler;

.field static sPackageManager:Landroid/content/pm/IPackageManager;

.field static final sThreadLocal:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Landroid/app/ActivityThread;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mActiveResources:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/app/ActivityThread$ResourcesKey;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/res/Resources;",
            ">;>;"
        }
    .end annotation
.end field

.field final mActivities:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/os/IBinder;",
            "Landroid/app/ActivityThread$ActivityClientRecord;",
            ">;"
        }
    .end annotation
.end field

.field final mAllApplications:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/Application;",
            ">;"
        }
    .end annotation
.end field

.field final mAppThread:Landroid/app/ActivityThread$ApplicationThread;

.field private mAvailThumbnailBitmap:Landroid/graphics/Bitmap;

.field final mBackupAgents:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/app/backup/BackupAgent;",
            ">;"
        }
    .end annotation
.end field

.field mBoundApplication:Landroid/app/ActivityThread$AppBindData;

.field mCompatConfiguration:Landroid/content/res/Configuration;

.field mConfiguration:Landroid/content/res/Configuration;

.field mCoreSettings:Landroid/os/Bundle;

.field final mDisplayMetrics:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/res/CompatibilityInfo;",
            "Landroid/util/DisplayMetrics;",
            ">;"
        }
    .end annotation
.end field

.field final mGcIdler:Landroid/app/ActivityThread$GcIdler;

.field mGcIdlerScheduled:Z

.field final mH:Landroid/app/ActivityThread$H;

.field mInitialApplication:Landroid/app/Application;

.field mInstrumentation:Landroid/app/Instrumentation;

.field mInstrumentationAppDir:Ljava/lang/String;

.field mInstrumentationAppLibraryDir:Ljava/lang/String;

.field mInstrumentationAppPackage:Ljava/lang/String;

.field mInstrumentedAppDir:Ljava/lang/String;

.field mInstrumentedAppLibraryDir:Ljava/lang/String;

.field mJitEnabled:Z

.field final mLocalProviders:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/os/IBinder;",
            "Landroid/app/ActivityThread$ProviderClientRecord;",
            ">;"
        }
    .end annotation
.end field

.field final mLocalProvidersByName:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/ComponentName;",
            "Landroid/app/ActivityThread$ProviderClientRecord;",
            ">;"
        }
    .end annotation
.end field

.field final mLooper:Landroid/os/Looper;

.field private mMainThreadConfig:Landroid/content/res/Configuration;

.field mNewActivities:Landroid/app/ActivityThread$ActivityClientRecord;

.field mNumVisibleActivities:I

.field final mOnPauseListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/app/Activity;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/OnActivityPausedListener;",
            ">;>;"
        }
    .end annotation
.end field

.field final mPackages:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/LoadedApk;",
            ">;>;"
        }
    .end annotation
.end field

.field mPendingConfiguration:Landroid/content/res/Configuration;

.field mProfiler:Landroid/app/ActivityThread$Profiler;

.field final mProviderMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/app/ActivityThread$ProviderClientRecord;",
            ">;"
        }
    .end annotation
.end field

.field final mProviderRefCountMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/os/IBinder;",
            "Landroid/app/ActivityThread$ProviderRefCount;",
            ">;"
        }
    .end annotation
.end field

.field final mRelaunchingActivities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/ActivityThread$ActivityClientRecord;",
            ">;"
        }
    .end annotation
.end field

.field mResCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

.field mResConfiguration:Landroid/content/res/Configuration;

.field final mResourcePackages:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/LoadedApk;",
            ">;>;"
        }
    .end annotation
.end field

.field final mServices:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/os/IBinder;",
            "Landroid/app/Service;",
            ">;"
        }
    .end annotation
.end field

.field mSystemThread:Z

.field private mThumbnailCanvas:Landroid/graphics/Canvas;

.field private mThumbnailHeight:I

.field private mThumbnailWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 136
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    sput-object v0, Landroid/app/ActivityThread;->THUMBNAIL_FORMAT:Landroid/graphics/Bitmap$Config;

    .line 148
    const-string v0, ";"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/app/ActivityThread;->PATTERN_SEMICOLON:Ljava/util/regex/Pattern;

    .line 153
    const/4 v0, 0x0

    sput-object v0, Landroid/app/ActivityThread;->mSystemContext:Landroid/app/ContextImpl;

    .line 180
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroid/app/ActivityThread;->sThreadLocal:Ljava/lang/ThreadLocal;

    .line 2185
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroid/app/ActivityThread;->sCurrentBroadcastIntent:Ljava/lang/ThreadLocal;

    return-void
.end method

.method constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1749
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 157
    new-instance v0, Landroid/app/ActivityThread$ApplicationThread;

    invoke-direct {v0, p0, v1}, Landroid/app/ActivityThread$ApplicationThread;-><init>(Landroid/app/ActivityThread;Landroid/app/ActivityThread$1;)V

    iput-object v0, p0, Landroid/app/ActivityThread;->mAppThread:Landroid/app/ActivityThread$ApplicationThread;

    .line 158
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ActivityThread;->mLooper:Landroid/os/Looper;

    .line 159
    new-instance v0, Landroid/app/ActivityThread$H;

    invoke-direct {v0, p0, v1}, Landroid/app/ActivityThread$H;-><init>(Landroid/app/ActivityThread;Landroid/app/ActivityThread$1;)V

    iput-object v0, p0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    .line 160
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/app/ActivityThread;->mActivities:Ljava/util/HashMap;

    .line 164
    iput-object v1, p0, Landroid/app/ActivityThread;->mNewActivities:Landroid/app/ActivityThread$ActivityClientRecord;

    .line 166
    iput v2, p0, Landroid/app/ActivityThread;->mNumVisibleActivities:I

    .line 167
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/app/ActivityThread;->mServices:Ljava/util/HashMap;

    .line 176
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/ActivityThread;->mAllApplications:Ljava/util/ArrayList;

    .line 179
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/app/ActivityThread;->mBackupAgents:Ljava/util/HashMap;

    .line 182
    iput-object v1, p0, Landroid/app/ActivityThread;->mInstrumentationAppDir:Ljava/lang/String;

    .line 183
    iput-object v1, p0, Landroid/app/ActivityThread;->mInstrumentationAppLibraryDir:Ljava/lang/String;

    .line 184
    iput-object v1, p0, Landroid/app/ActivityThread;->mInstrumentationAppPackage:Ljava/lang/String;

    .line 185
    iput-object v1, p0, Landroid/app/ActivityThread;->mInstrumentedAppDir:Ljava/lang/String;

    .line 186
    iput-object v1, p0, Landroid/app/ActivityThread;->mInstrumentedAppLibraryDir:Ljava/lang/String;

    .line 187
    iput-boolean v2, p0, Landroid/app/ActivityThread;->mSystemThread:Z

    .line 188
    iput-boolean v2, p0, Landroid/app/ActivityThread;->mJitEnabled:Z

    .line 198
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/app/ActivityThread;->mPackages:Ljava/util/HashMap;

    .line 200
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/app/ActivityThread;->mResourcePackages:Ljava/util/HashMap;

    .line 202
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/app/ActivityThread;->mDisplayMetrics:Ljava/util/HashMap;

    .line 204
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/app/ActivityThread;->mActiveResources:Ljava/util/HashMap;

    .line 206
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/ActivityThread;->mRelaunchingActivities:Ljava/util/ArrayList;

    .line 208
    iput-object v1, p0, Landroid/app/ActivityThread;->mPendingConfiguration:Landroid/content/res/Configuration;

    .line 211
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/app/ActivityThread;->mProviderMap:Ljava/util/HashMap;

    .line 213
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/app/ActivityThread;->mProviderRefCountMap:Ljava/util/HashMap;

    .line 215
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/app/ActivityThread;->mLocalProviders:Ljava/util/HashMap;

    .line 217
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/app/ActivityThread;->mLocalProvidersByName:Ljava/util/HashMap;

    .line 220
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/app/ActivityThread;->mOnPauseListeners:Ljava/util/HashMap;

    .line 223
    new-instance v0, Landroid/app/ActivityThread$GcIdler;

    invoke-direct {v0, p0}, Landroid/app/ActivityThread$GcIdler;-><init>(Landroid/app/ActivityThread;)V

    iput-object v0, p0, Landroid/app/ActivityThread;->mGcIdler:Landroid/app/ActivityThread$GcIdler;

    .line 224
    iput-boolean v2, p0, Landroid/app/ActivityThread;->mGcIdlerScheduled:Z

    .line 228
    iput-object v1, p0, Landroid/app/ActivityThread;->mCoreSettings:Landroid/os/Bundle;

    .line 1546
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/app/ActivityThread;->mMainThreadConfig:Landroid/content/res/Configuration;

    .line 2714
    iput v3, p0, Landroid/app/ActivityThread;->mThumbnailWidth:I

    .line 2715
    iput v3, p0, Landroid/app/ActivityThread;->mThumbnailHeight:I

    .line 2716
    iput-object v1, p0, Landroid/app/ActivityThread;->mAvailThumbnailBitmap:Landroid/graphics/Bitmap;

    .line 2717
    iput-object v1, p0, Landroid/app/ActivityThread;->mThumbnailCanvas:Landroid/graphics/Canvas;

    .line 1750
    return-void
.end method

.method static synthetic access$1000(Landroid/app/ActivityThread;Landroid/os/IBinder;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 133
    invoke-direct {p0, p1, p2}, Landroid/app/ActivityThread;->handleWindowVisibility(Landroid/os/IBinder;Z)V

    return-void
.end method

.method static synthetic access$1100(Landroid/app/ActivityThread;Landroid/app/ActivityThread$ResultData;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 133
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleSendResult(Landroid/app/ActivityThread$ResultData;)V

    return-void
.end method

.method static synthetic access$1200(Landroid/app/ActivityThread;Landroid/os/IBinder;ZIZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 133
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/app/ActivityThread;->handleDestroyActivity(Landroid/os/IBinder;ZIZ)V

    return-void
.end method

.method static synthetic access$1300(Landroid/app/ActivityThread;Landroid/app/ActivityThread$AppBindData;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 133
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleBindApplication(Landroid/app/ActivityThread$AppBindData;)V

    return-void
.end method

.method static synthetic access$1400(Landroid/app/ActivityThread;Landroid/app/ActivityThread$NewIntentData;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 133
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleNewIntent(Landroid/app/ActivityThread$NewIntentData;)V

    return-void
.end method

.method static synthetic access$1500(Landroid/app/ActivityThread;Landroid/app/ActivityThread$ReceiverData;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 133
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleReceiver(Landroid/app/ActivityThread$ReceiverData;)V

    return-void
.end method

.method static synthetic access$1600(Landroid/app/ActivityThread;Landroid/app/ActivityThread$CreateServiceData;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 133
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleCreateService(Landroid/app/ActivityThread$CreateServiceData;)V

    return-void
.end method

.method static synthetic access$1700(Landroid/app/ActivityThread;Landroid/app/ActivityThread$BindServiceData;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 133
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleBindService(Landroid/app/ActivityThread$BindServiceData;)V

    return-void
.end method

.method static synthetic access$1800(Landroid/app/ActivityThread;Landroid/app/ActivityThread$BindServiceData;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 133
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleUnbindService(Landroid/app/ActivityThread$BindServiceData;)V

    return-void
.end method

.method static synthetic access$1900(Landroid/app/ActivityThread;Landroid/app/ActivityThread$ServiceArgsData;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 133
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleServiceArgs(Landroid/app/ActivityThread$ServiceArgsData;)V

    return-void
.end method

.method static synthetic access$200(Landroid/app/ActivityThread;ILjava/lang/Object;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 133
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;II)V

    return-void
.end method

.method static synthetic access$2000(Landroid/app/ActivityThread;Landroid/os/IBinder;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 133
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleStopService(Landroid/os/IBinder;)V

    return-void
.end method

.method static synthetic access$2100(Landroid/app/ActivityThread;Landroid/os/IBinder;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 133
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleRequestThumbnail(Landroid/os/IBinder;)V

    return-void
.end method

.method static synthetic access$2200(Landroid/app/ActivityThread;Landroid/app/ActivityThread$DumpComponentInfo;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 133
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleDumpService(Landroid/app/ActivityThread$DumpComponentInfo;)V

    return-void
.end method

.method static synthetic access$2300(Landroid/app/ActivityThread;Landroid/app/ActivityThread$CreateBackupAgentData;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 133
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleCreateBackupAgent(Landroid/app/ActivityThread$CreateBackupAgentData;)V

    return-void
.end method

.method static synthetic access$2400(Landroid/app/ActivityThread;Landroid/app/ActivityThread$CreateBackupAgentData;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 133
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleDestroyBackupAgent(Landroid/app/ActivityThread$CreateBackupAgentData;)V

    return-void
.end method

.method static synthetic access$2500(Landroid/app/ActivityThread;Landroid/app/ActivityThread$DumpComponentInfo;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 133
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleDumpActivity(Landroid/app/ActivityThread$DumpComponentInfo;)V

    return-void
.end method

.method static synthetic access$2600(Landroid/app/ActivityThread;Landroid/app/ActivityThread$DumpComponentInfo;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 133
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleDumpProvider(Landroid/app/ActivityThread$DumpComponentInfo;)V

    return-void
.end method

.method static synthetic access$2700(Landroid/app/ActivityThread;Landroid/os/IBinder;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 133
    invoke-direct {p0, p1, p2}, Landroid/app/ActivityThread;->handleSleeping(Landroid/os/IBinder;Z)V

    return-void
.end method

.method static synthetic access$2800(Landroid/app/ActivityThread;Landroid/os/Bundle;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 133
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleSetCoreSettings(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$2900(Landroid/app/ActivityThread;Landroid/app/ActivityThread$UpdateCompatibilityData;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 133
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleUpdatePackageCompatibilityInfo(Landroid/app/ActivityThread$UpdateCompatibilityData;)V

    return-void
.end method

.method static synthetic access$300(Landroid/app/ActivityThread;ILjava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 133
    invoke-direct {p0, p1, p2}, Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic access$400(Landroid/app/ActivityThread;ILjava/lang/Object;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 133
    invoke-direct {p0, p1, p2, p3}, Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;I)V

    return-void
.end method

.method static synthetic access$500(Landroid/app/ActivityThread;Ljava/io/FileDescriptor;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 133
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->dumpGraphicsInfo(Ljava/io/FileDescriptor;)V

    return-void
.end method

.method static synthetic access$600(Landroid/app/ActivityThread;Landroid/app/ActivityThread$ActivityClientRecord;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 133
    invoke-direct {p0, p1, p2}, Landroid/app/ActivityThread;->handleLaunchActivity(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$700(Landroid/app/ActivityThread;Landroid/app/ActivityThread$ActivityClientRecord;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 133
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleRelaunchActivity(Landroid/app/ActivityThread$ActivityClientRecord;)V

    return-void
.end method

.method static synthetic access$800(Landroid/app/ActivityThread;Landroid/os/IBinder;ZZI)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 133
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/app/ActivityThread;->handlePauseActivity(Landroid/os/IBinder;ZZI)V

    return-void
.end method

.method static synthetic access$900(Landroid/app/ActivityThread;Landroid/os/IBinder;ZI)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 133
    invoke-direct {p0, p1, p2, p3}, Landroid/app/ActivityThread;->handleStopActivity(Landroid/os/IBinder;ZI)V

    return-void
.end method

.method private applyResourceFlush()V
    .locals 5

    .prologue
    .line 3658
    invoke-static {}, Landroid/app/ApplicationPackageManager;->configurationChanged()V

    .line 3659
    iget-object v3, p0, Landroid/app/ActivityThread;->mActiveResources:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 3661
    .local v0, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3662
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 3663
    .local v2, v:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;"
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/res/Resources;

    .line 3664
    .local v1, r:Landroid/content/res/Resources;
    if-eqz v1, :cond_0

    .line 3665
    const-string v3, "ActivityThread"

    const-string v4, "Fulsh res due to theme change"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3666
    invoke-virtual {v1}, Landroid/content/res/Resources;->flushResCache()V

    goto :goto_0

    .line 3669
    .end local v1           #r:Landroid/content/res/Resources;
    .end local v2           #v:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;"
    :cond_1
    return-void
.end method

.method private attach(Z)V
    .locals 7
    .parameter "system"

    .prologue
    .line 4695
    sget-object v4, Landroid/app/ActivityThread;->sThreadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v4, p0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 4696
    iput-boolean p1, p0, Landroid/app/ActivityThread;->mSystemThread:Z

    .line 4697
    if-nez p1, :cond_0

    .line 4698
    new-instance v4, Landroid/app/ActivityThread$1;

    invoke-direct {v4, p0}, Landroid/app/ActivityThread$1;-><init>(Landroid/app/ActivityThread;)V

    invoke-static {v4}, Landroid/view/ViewRootImpl;->addFirstDrawHandler(Ljava/lang/Runnable;)V

    .line 4703
    const-string v4, "<pre-initialized>"

    invoke-static {v4}, Landroid/ddm/DdmHandleAppName;->setAppName(Ljava/lang/String;)V

    .line 4704
    iget-object v4, p0, Landroid/app/ActivityThread;->mAppThread:Landroid/app/ActivityThread$ApplicationThread;

    invoke-virtual {v4}, Landroid/app/ActivityThread$ApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/os/RuntimeInit;->setApplicationObject(Landroid/os/IBinder;)V

    .line 4705
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    .line 4707
    .local v3, mgr:Landroid/app/IActivityManager;
    :try_start_0
    iget-object v4, p0, Landroid/app/ActivityThread;->mAppThread:Landroid/app/ActivityThread$ApplicationThread;

    invoke-interface {v3, v4}, Landroid/app/IActivityManager;->attachApplication(Landroid/app/IApplicationThread;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 4729
    .end local v3           #mgr:Landroid/app/IActivityManager;
    :goto_0
    new-instance v4, Landroid/app/ActivityThread$2;

    invoke-direct {v4, p0}, Landroid/app/ActivityThread$2;-><init>(Landroid/app/ActivityThread;)V

    invoke-static {v4}, Landroid/view/ViewRootImpl;->addConfigCallback(Landroid/content/ComponentCallbacks;)V

    .line 4752
    return-void

    .line 4714
    :cond_0
    const-string/jumbo v4, "system_process"

    invoke-static {v4}, Landroid/ddm/DdmHandleAppName;->setAppName(Ljava/lang/String;)V

    .line 4716
    :try_start_1
    new-instance v4, Landroid/app/Instrumentation;

    invoke-direct {v4}, Landroid/app/Instrumentation;-><init>()V

    iput-object v4, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    .line 4717
    new-instance v1, Landroid/app/ContextImpl;

    invoke-direct {v1}, Landroid/app/ContextImpl;-><init>()V

    .line 4718
    .local v1, context:Landroid/app/ContextImpl;
    invoke-virtual {p0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v4

    iget-object v4, v4, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5, p0}, Landroid/app/ContextImpl;->init(Landroid/app/LoadedApk;Landroid/os/IBinder;Landroid/app/ActivityThread;)V

    .line 4719
    const-class v4, Landroid/app/Application;

    invoke-static {v4, v1}, Landroid/app/Instrumentation;->newApplication(Ljava/lang/Class;Landroid/content/Context;)Landroid/app/Application;

    move-result-object v0

    .line 4720
    .local v0, app:Landroid/app/Application;
    iget-object v4, p0, Landroid/app/ActivityThread;->mAllApplications:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4721
    iput-object v0, p0, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    .line 4722
    invoke-virtual {v0}, Landroid/app/Application;->onCreate()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 4723
    .end local v0           #app:Landroid/app/Application;
    .end local v1           #context:Landroid/app/ContextImpl;
    :catch_0
    move-exception v2

    .line 4724
    .local v2, e:Ljava/lang/Exception;
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to instantiate Application():"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 4708
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v3       #mgr:Landroid/app/IActivityManager;
    :catch_1
    move-exception v4

    goto :goto_0
.end method

.method static final cleanUpPendingRemoveWindows(Landroid/app/ActivityThread$ActivityClientRecord;)V
    .locals 5
    .parameter "r"

    .prologue
    const/4 v4, 0x0

    .line 2594
    iget-object v1, p0, Landroid/app/ActivityThread$ActivityClientRecord;->mPendingRemoveWindow:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 2595
    iget-object v1, p0, Landroid/app/ActivityThread$ActivityClientRecord;->mPendingRemoveWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Landroid/app/ActivityThread$ActivityClientRecord;->mPendingRemoveWindow:Landroid/view/View;

    invoke-interface {v1, v2}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 2596
    iget-object v1, p0, Landroid/app/ActivityThread$ActivityClientRecord;->mPendingRemoveWindow:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    .line 2597
    .local v0, wtoken:Landroid/os/IBinder;
    if-eqz v0, :cond_0

    .line 2598
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v1

    iget-object v2, p0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Activity"

    invoke-virtual {v1, v0, v2, v3}, Landroid/view/WindowManagerImpl;->closeAll(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;)V

    .line 2602
    .end local v0           #wtoken:Landroid/os/IBinder;
    :cond_0
    iput-object v4, p0, Landroid/app/ActivityThread$ActivityClientRecord;->mPendingRemoveWindow:Landroid/view/View;

    .line 2603
    iput-object v4, p0, Landroid/app/ActivityThread$ActivityClientRecord;->mPendingRemoveWindowManager:Landroid/view/WindowManager;

    .line 2604
    return-void
.end method

.method private createThumbnailBitmap(Landroid/app/ActivityThread$ActivityClientRecord;)Landroid/graphics/Bitmap;
    .locals 9
    .parameter "r"

    .prologue
    .line 2720
    iget-object v4, p0, Landroid/app/ActivityThread;->mAvailThumbnailBitmap:Landroid/graphics/Bitmap;

    .line 2722
    .local v4, thumbnail:Landroid/graphics/Bitmap;
    if-nez v4, :cond_0

    .line 2723
    :try_start_0
    iget v5, p0, Landroid/app/ActivityThread;->mThumbnailWidth:I

    .line 2725
    .local v5, w:I
    if-gez v5, :cond_4

    .line 2726
    iget-object v6, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 2727
    .local v3, res:Landroid/content/res/Resources;
    const v6, 0x1050001

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .local v2, h:I
    iput v2, p0, Landroid/app/ActivityThread;->mThumbnailHeight:I

    .line 2730
    const v6, 0x1050002

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Landroid/app/ActivityThread;->mThumbnailWidth:I

    .line 2737
    .end local v3           #res:Landroid/content/res/Resources;
    :goto_0
    if-lez v5, :cond_0

    if-lez v2, :cond_0

    .line 2738
    sget-object v6, Landroid/app/ActivityThread;->THUMBNAIL_FORMAT:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v2, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 2739
    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 2743
    .end local v2           #h:I
    .end local v5           #w:I
    :cond_0
    if-eqz v4, :cond_3

    .line 2744
    iget-object v0, p0, Landroid/app/ActivityThread;->mThumbnailCanvas:Landroid/graphics/Canvas;

    .line 2745
    .local v0, cv:Landroid/graphics/Canvas;
    if-nez v0, :cond_1

    .line 2746
    new-instance v0, Landroid/graphics/Canvas;

    .end local v0           #cv:Landroid/graphics/Canvas;
    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    .restart local v0       #cv:Landroid/graphics/Canvas;
    iput-object v0, p0, Landroid/app/ActivityThread;->mThumbnailCanvas:Landroid/graphics/Canvas;

    .line 2749
    :cond_1
    invoke-virtual {v0, v4}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 2750
    iget-object v6, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v6, v4, v0}, Landroid/app/Activity;->onCreateThumbnail(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 2751
    iput-object v4, p0, Landroid/app/ActivityThread;->mAvailThumbnailBitmap:Landroid/graphics/Bitmap;

    .line 2752
    const/4 v4, 0x0

    .line 2754
    :cond_2
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 2767
    .end local v0           #cv:Landroid/graphics/Canvas;
    :cond_3
    :goto_1
    return-object v4

    .line 2733
    .restart local v5       #w:I
    :cond_4
    iget v2, p0, Landroid/app/ActivityThread;->mThumbnailHeight:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v2       #h:I
    goto :goto_0

    .line 2757
    .end local v2           #h:I
    .end local v5           #w:I
    :catch_0
    move-exception v1

    .line 2758
    .local v1, e:Ljava/lang/Exception;
    iget-object v6, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v7, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v6, v7, v1}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 2759
    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to create thumbnail of "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p1, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v8}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 2764
    :cond_5
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public static currentActivityThread()Landroid/app/ActivityThread;
    .locals 1

    .prologue
    .line 1503
    sget-object v0, Landroid/app/ActivityThread;->sThreadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityThread;

    return-object v0
.end method

.method public static currentApplication()Landroid/app/Application;
    .locals 2

    .prologue
    .line 1513
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    .line 1514
    .local v0, am:Landroid/app/ActivityThread;
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static currentPackageName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1507
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    .line 1508
    .local v0, am:Landroid/app/ActivityThread;
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    if-eqz v1, :cond_0

    iget-object v1, v0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    iget-object v1, v1, Landroid/app/ActivityThread$AppBindData;->processName:Ljava/lang/String;

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private deliverNewIntents(Landroid/app/ActivityThread$ActivityClientRecord;Ljava/util/List;)V
    .locals 5
    .parameter "r"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/ActivityThread$ActivityClientRecord;",
            "Ljava/util/List",
            "<",
            "Landroid/content/Intent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2155
    .local p2, intents:Ljava/util/List;,"Ljava/util/List<Landroid/content/Intent;>;"
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    .line 2156
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 2157
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 2158
    .local v2, intent:Landroid/content/Intent;
    iget-object v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 2159
    iget-object v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-object v3, v3, Landroid/app/Activity;->mFragments:Landroid/app/FragmentManagerImpl;

    invoke-virtual {v3}, Landroid/app/FragmentManagerImpl;->noteStateNotSaved()V

    .line 2160
    iget-object v3, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v4, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v3, v4, v2}, Landroid/app/Instrumentation;->callActivityOnNewIntent(Landroid/app/Activity;Landroid/content/Intent;)V

    .line 2156
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2162
    .end local v2           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private deliverResults(Landroid/app/ActivityThread$ActivityClientRecord;Ljava/util/List;)V
    .locals 9
    .parameter "r"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/ActivityThread$ActivityClientRecord;",
            "Ljava/util/List",
            "<",
            "Landroid/app/ResultInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3143
    .local p2, results:Ljava/util/List;,"Ljava/util/List<Landroid/app/ResultInfo;>;"
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    .line 3144
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 3145
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ResultInfo;

    .line 3147
    .local v3, ri:Landroid/app/ResultInfo;
    :try_start_0
    iget-object v4, v3, Landroid/app/ResultInfo;->mData:Landroid/content/Intent;

    if-eqz v4, :cond_0

    .line 3148
    iget-object v4, v3, Landroid/app/ResultInfo;->mData:Landroid/content/Intent;

    iget-object v5, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 3152
    :cond_0
    iget-object v4, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-object v5, v3, Landroid/app/ResultInfo;->mResultWho:Ljava/lang/String;

    iget v6, v3, Landroid/app/ResultInfo;->mRequestCode:I

    iget v7, v3, Landroid/app/ResultInfo;->mResultCode:I

    iget-object v8, v3, Landroid/app/ResultInfo;->mData:Landroid/content/Intent;

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/app/Activity;->dispatchActivityResult(Ljava/lang/String;IILandroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3144
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3154
    :catch_0
    move-exception v1

    .line 3155
    .local v1, e:Ljava/lang/Exception;
    iget-object v4, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v5, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v4, v5, v1}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 3156
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failure delivering result "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " to activity "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 3163
    .end local v1           #e:Ljava/lang/Exception;
    .end local v3           #ri:Landroid/app/ResultInfo;
    :cond_2
    return-void
.end method

.method private native dumpGraphicsInfo(Ljava/io/FileDescriptor;)V
.end method

.method public static getAssetRedirectionManager()Lcom/android/internal/app/IAssetRedirectionManager;
    .locals 2
    .annotation build Landroid/annotation/LewaHook;
        value = .enum Landroid/annotation/LewaHook$LewaHookType;->NEW_METHOD:Landroid/annotation/LewaHook$LewaHookType;
    .end annotation

    .prologue
    sget-object v1, Landroid/app/ActivityThread;->sAssetRedirectionManager:Lcom/android/internal/app/IAssetRedirectionManager;

    if-eqz v1, :cond_0

    sget-object v1, Landroid/app/ActivityThread;->sAssetRedirectionManager:Lcom/android/internal/app/IAssetRedirectionManager;

    .local v0, b:Landroid/os/IBinder;
    :goto_0
    return-object v1

    .end local v0           #b:Landroid/os/IBinder;
    :cond_0
    const-string v1, "assetredirection"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .restart local v0       #b:Landroid/os/IBinder;
    invoke-static {v0}, Lcom/android/internal/app/IAssetRedirectionManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAssetRedirectionManager;

    move-result-object v1

    sput-object v1, Landroid/app/ActivityThread;->sAssetRedirectionManager:Lcom/android/internal/app/IAssetRedirectionManager;

    sget-object v1, Landroid/app/ActivityThread;->sAssetRedirectionManager:Lcom/android/internal/app/IAssetRedirectionManager;

    goto :goto_0
.end method

.method public static getIntentBeingBroadcast()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 2193
    sget-object v0, Landroid/app/ActivityThread;->sCurrentBroadcastIntent:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    return-object v0
.end method

.method private getPackageInfo(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;Ljava/lang/ClassLoader;ZZ)Landroid/app/LoadedApk;
    .locals 10
    .parameter "aInfo"
    .parameter "compatInfo"
    .parameter "baseLoader"
    .parameter "securityViolation"
    .parameter "includeCode"

    .prologue
    .line 1718
    iget-object v9, p0, Landroid/app/ActivityThread;->mPackages:Ljava/util/HashMap;

    monitor-enter v9

    .line 1720
    if-eqz p5, :cond_2

    .line 1721
    :try_start_0
    iget-object v1, p0, Landroid/app/ActivityThread;->mPackages:Ljava/util/HashMap;

    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/ref/WeakReference;

    .line 1725
    .local v8, ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    :goto_0
    if-eqz v8, :cond_3

    invoke-virtual {v8}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/LoadedApk;

    move-object v0, v1

    .line 1726
    .local v0, packageInfo:Landroid/app/LoadedApk;
    :goto_1
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/app/LoadedApk;->mResources:Landroid/content/res/Resources;

    if-eqz v1, :cond_1

    iget-object v1, v0, Landroid/app/LoadedApk;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/AssetManager;->isUpToDate()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1733
    :cond_0
    new-instance v0, Landroid/app/LoadedApk;

    .end local v0           #packageInfo:Landroid/app/LoadedApk;
    if-eqz p5, :cond_4

    iget v1, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_4

    const/4 v7, 0x1

    :goto_2
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p0

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v7}, Landroid/app/LoadedApk;-><init>(Landroid/app/ActivityThread;Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;Landroid/app/ActivityThread;Ljava/lang/ClassLoader;ZZ)V

    .line 1737
    .restart local v0       #packageInfo:Landroid/app/LoadedApk;
    if-eqz p5, :cond_5

    .line 1738
    iget-object v1, p0, Landroid/app/ActivityThread;->mPackages:Ljava/util/HashMap;

    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1745
    :cond_1
    :goto_3
    monitor-exit v9

    return-object v0

    .line 1723
    .end local v0           #packageInfo:Landroid/app/LoadedApk;
    .end local v8           #ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    :cond_2
    iget-object v1, p0, Landroid/app/ActivityThread;->mResourcePackages:Ljava/util/HashMap;

    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/ref/WeakReference;

    .restart local v8       #ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    goto :goto_0

    .line 1725
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 1733
    :cond_4
    const/4 v7, 0x0

    goto :goto_2

    .line 1741
    .restart local v0       #packageInfo:Landroid/app/LoadedApk;
    :cond_5
    iget-object v1, p0, Landroid/app/ActivityThread;->mResourcePackages:Ljava/util/HashMap;

    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 1746
    .end local v0           #packageInfo:Landroid/app/LoadedApk;
    .end local v8           #ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    :catchall_0
    move-exception v1

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getPackageManager()Landroid/content/pm/IPackageManager;
    .locals 2

    .prologue
    .line 1518
    sget-object v1, Landroid/app/ActivityThread;->sPackageManager:Landroid/content/pm/IPackageManager;

    if-eqz v1, :cond_0

    .line 1520
    sget-object v1, Landroid/app/ActivityThread;->sPackageManager:Landroid/content/pm/IPackageManager;

    .line 1526
    .local v0, b:Landroid/os/IBinder;
    :goto_0
    return-object v1

    .line 1522
    .end local v0           #b:Landroid/os/IBinder;
    :cond_0
    const-string/jumbo v1, "package"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1524
    .restart local v0       #b:Landroid/os/IBinder;
    invoke-static {v0}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v1

    sput-object v1, Landroid/app/ActivityThread;->sPackageManager:Landroid/content/pm/IPackageManager;

    .line 1526
    sget-object v1, Landroid/app/ActivityThread;->sPackageManager:Landroid/content/pm/IPackageManager;

    goto :goto_0
.end method

.method private handleBindApplication(Landroid/app/ActivityThread$AppBindData;)V
    .locals 29
    .parameter "data"

    .prologue
    .line 3944
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    .line 3945
    new-instance v2, Landroid/content/res/Configuration;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/app/ActivityThread$AppBindData;->config:Landroid/content/res/Configuration;

    invoke-direct {v2, v4}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/app/ActivityThread;->mConfiguration:Landroid/content/res/Configuration;

    .line 3946
    new-instance v2, Landroid/content/res/Configuration;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/app/ActivityThread$AppBindData;->config:Landroid/content/res/Configuration;

    invoke-direct {v2, v4}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/app/ActivityThread;->mCompatConfiguration:Landroid/content/res/Configuration;

    .line 3948
    new-instance v2, Landroid/app/ActivityThread$Profiler;

    invoke-direct {v2}, Landroid/app/ActivityThread$Profiler;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    .line 3949
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/app/ActivityThread$AppBindData;->initProfileFile:Ljava/lang/String;

    iput-object v4, v2, Landroid/app/ActivityThread$Profiler;->profileFile:Ljava/lang/String;

    .line 3950
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/app/ActivityThread$AppBindData;->initProfileFd:Landroid/os/ParcelFileDescriptor;

    iput-object v4, v2, Landroid/app/ActivityThread$Profiler;->profileFd:Landroid/os/ParcelFileDescriptor;

    .line 3951
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    move-object/from16 v0, p1

    iget-boolean v4, v0, Landroid/app/ActivityThread$AppBindData;->initAutoStopProfiler:Z

    iput-boolean v4, v2, Landroid/app/ActivityThread$Profiler;->autoStopProfiler:Z

    .line 3954
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/app/ActivityThread$AppBindData;->processName:Ljava/lang/String;

    invoke-static {v2}, Landroid/os/Process;->setArgV0(Ljava/lang/String;)V

    .line 3956
    const-string v2, "dalvik.vm.heaputilization"

    const-string v4, ""

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 3957
    .local v28, str:Ljava/lang/String;
    const-string v2, ""

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3958
    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v20

    .line 3959
    .local v20, heapUtil:F
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v2

    move/from16 v0, v20

    invoke-virtual {v2, v0}, Ldalvik/system/VMRuntime;->setTargetHeapUtilization(F)F

    .line 3960
    const-string v2, "ActivityThread"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setTargetHeapUtilization:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3962
    .end local v20           #heapUtil:F
    :cond_0
    const-string v2, "dalvik.vm.heapidealfree"

    const/4 v4, 0x0

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v19

    .line 3963
    .local v19, heapIdealFree:I
    if-lez v19, :cond_1

    .line 3964
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v2

    move/from16 v0, v19

    invoke-virtual {v2, v0}, Ldalvik/system/VMRuntime;->setTargetHeapIdealFree(I)F

    .line 3965
    const-string v2, "ActivityThread"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setTargetHeapIdealFree:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3967
    :cond_1
    const-string v2, "dalvik.vm.heapconcurrentstart"

    const/4 v4, 0x0

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v18

    .line 3968
    .local v18, heapConcurrentStart:I
    if-lez v18, :cond_2

    .line 3969
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v2

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Ldalvik/system/VMRuntime;->setTargetHeapConcurrentStart(I)F

    .line 3970
    const-string v2, "ActivityThread"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setTargetHeapConcurrentStart:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3984
    :cond_2
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/app/ActivityThread$AppBindData;->processName:Ljava/lang/String;

    invoke-static {v2}, Landroid/ddm/DdmHandleAppName;->setAppName(Ljava/lang/String;)V

    .line 3986
    move-object/from16 v0, p1

    iget-boolean v2, v0, Landroid/app/ActivityThread$AppBindData;->persistent:Z

    if-eqz v2, :cond_3

    .line 3990
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/WindowManagerImpl;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v15

    .line 3991
    .local v15, display:Landroid/view/Display;
    invoke-static {v15}, Landroid/app/ActivityManager;->isHighEndGfx(Landroid/view/Display;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 3992
    const/4 v2, 0x0

    invoke-static {v2}, Landroid/view/HardwareRenderer;->disable(Z)V

    .line 3996
    .end local v15           #display:Landroid/view/Display;
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    iget-object v2, v2, Landroid/app/ActivityThread$Profiler;->profileFd:Landroid/os/ParcelFileDescriptor;

    if-eqz v2, :cond_4

    .line 3997
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    invoke-virtual {v2}, Landroid/app/ActivityThread$Profiler;->startProfiling()V

    .line 4004
    :cond_4
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v4, 0xc

    if-gt v2, v4, :cond_5

    .line 4005
    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-static {v2}, Landroid/os/AsyncTask;->setDefaultExecutor(Ljava/util/concurrent/Executor;)V

    .line 4014
    :cond_5
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/util/TimeZone;->setDefault(Ljava/util/TimeZone;)V

    .line 4019
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/app/ActivityThread$AppBindData;->config:Landroid/content/res/Configuration;

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v2}, Ljava/util/Locale;->setDefault(Ljava/util/Locale;)V

    .line 4026
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/app/ActivityThread$AppBindData;->config:Landroid/content/res/Configuration;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/app/ActivityThread$AppBindData;->compatInfo:Landroid/content/res/CompatibilityInfo;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4}, Landroid/app/ActivityThread;->applyConfigurationToResourcesLocked(Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)Z

    .line 4027
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityThread;->applyCompatConfiguration()Landroid/content/res/Configuration;

    .line 4029
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/app/ActivityThread$AppBindData;->compatInfo:Landroid/content/res/CompatibilityInfo;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4}, Landroid/app/ActivityThread;->getPackageInfoNoCheck(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;)Landroid/app/LoadedApk;

    move-result-object v2

    move-object/from16 v0, p1

    iput-object v2, v0, Landroid/app/ActivityThread$AppBindData;->info:Landroid/app/LoadedApk;

    .line 4031
    new-instance v11, Landroid/app/ContextImpl;

    invoke-direct {v11}, Landroid/app/ContextImpl;-><init>()V

    .line 4032
    .local v11, appContext:Landroid/app/ContextImpl;
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/app/ActivityThread$AppBindData;->info:Landroid/app/LoadedApk;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v11, v2, v4, v0}, Landroid/app/ContextImpl;->init(Landroid/app/LoadedApk;Landroid/os/IBinder;Landroid/app/ActivityThread;)V

    .line 4033
    invoke-virtual {v11}, Landroid/app/ContextImpl;->getCacheDir()Ljava/io/File;

    move-result-object v13

    .line 4036
    .local v13, cacheDir:Ljava/io/File;
    const-string/jumbo v2, "java.io.tmpdir"

    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 4038
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/app/ActivityThread$AppBindData;->info:Landroid/app/LoadedApk;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v13}, Landroid/app/ActivityThread;->setupGraphicsSupport(Landroid/app/LoadedApk;Ljava/io/File;)V

    .line 4044
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v2, v2, 0x81

    if-eqz v2, :cond_6

    .line 4047
    invoke-static {}, Landroid/os/StrictMode;->conditionallyEnableDebugLogging()Z

    .line 4057
    :cond_6
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v4, 0x9

    if-le v2, v4, :cond_7

    .line 4058
    invoke-static {}, Landroid/os/StrictMode;->enableDeathOnNetwork()V

    .line 4064
    :cond_7
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v2, v2, 0x2000

    if-nez v2, :cond_8

    .line 4066
    const/16 v2, 0xa0

    invoke-static {v2}, Landroid/graphics/Bitmap;->setDefaultDensity(I)V

    .line 4069
    :cond_8
    move-object/from16 v0, p1

    iget v2, v0, Landroid/app/ActivityThread$AppBindData;->debugMode:I

    if-eqz v2, :cond_9

    .line 4071
    const/16 v2, 0x1fa4

    invoke-static {v2}, Landroid/os/Debug;->changeDebugPort(I)V

    .line 4072
    move-object/from16 v0, p1

    iget v2, v0, Landroid/app/ActivityThread$AppBindData;->debugMode:I

    const/4 v4, 0x2

    if-ne v2, v4, :cond_c

    .line 4073
    const-string v2, "ActivityThread"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Application "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/app/ActivityThread$AppBindData;->info:Landroid/app/LoadedApk;

    invoke-virtual {v5}, Landroid/app/LoadedApk;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is waiting for the debugger on port 8100..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4076
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v22

    .line 4078
    .local v22, mgr:Landroid/app/IActivityManager;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/ActivityThread;->mAppThread:Landroid/app/ActivityThread$ApplicationThread;

    const/4 v4, 0x1

    move-object/from16 v0, v22

    invoke-interface {v0, v2, v4}, Landroid/app/IActivityManager;->showWaitingForDebugger(Landroid/app/IApplicationThread;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_6

    .line 4082
    :goto_0
    invoke-static {}, Landroid/os/Debug;->waitForDebugger()V

    .line 4085
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/ActivityThread;->mAppThread:Landroid/app/ActivityThread$ApplicationThread;

    const/4 v4, 0x0

    move-object/from16 v0, v22

    invoke-interface {v0, v2, v4}, Landroid/app/IActivityManager;->showWaitingForDebugger(Landroid/app/IApplicationThread;Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_5

    .line 4096
    .end local v22           #mgr:Landroid/app/IActivityManager;
    :cond_9
    :goto_1
    move-object/from16 v0, p1

    iget-boolean v2, v0, Landroid/app/ActivityThread$AppBindData;->enableOpenGlTrace:Z

    if-eqz v2, :cond_a

    .line 4097
    invoke-static {}, Landroid/opengl/GLUtils;->enableTracing()V

    .line 4103
    :cond_a
    const-string v2, "connectivity"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v12

    .line 4104
    .local v12, b:Landroid/os/IBinder;
    if-eqz v12, :cond_b

    .line 4108
    invoke-static {v12}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v27

    .line 4110
    .local v27, service:Landroid/net/IConnectivityManager;
    :try_start_2
    invoke-interface/range {v27 .. v27}, Landroid/net/IConnectivityManager;->getProxy()Landroid/net/ProxyProperties;

    move-result-object v25

    .line 4111
    .local v25, proxyProperties:Landroid/net/ProxyProperties;
    invoke-static/range {v25 .. v25}, Landroid/net/Proxy;->setHttpProxySystemProperty(Landroid/net/ProxyProperties;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_4

    .line 4115
    .end local v25           #proxyProperties:Landroid/net/ProxyProperties;
    .end local v27           #service:Landroid/net/IConnectivityManager;
    :cond_b
    :goto_2
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/app/ActivityThread$AppBindData;->instrumentationName:Landroid/content/ComponentName;

    if-eqz v2, :cond_12

    .line 4116
    const/16 v21, 0x0

    .line 4118
    .local v21, ii:Landroid/content/pm/InstrumentationInfo;
    :try_start_3
    invoke-virtual {v11}, Landroid/app/ContextImpl;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/app/ActivityThread$AppBindData;->instrumentationName:Landroid/content/ComponentName;

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->getInstrumentationInfo(Landroid/content/ComponentName;I)Landroid/content/pm/InstrumentationInfo;
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v21

    .line 4122
    :goto_3
    if-nez v21, :cond_d

    .line 4123
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to find instrumentation info for: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/app/ActivityThread$AppBindData;->instrumentationName:Landroid/content/ComponentName;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 4090
    .end local v12           #b:Landroid/os/IBinder;
    .end local v21           #ii:Landroid/content/pm/InstrumentationInfo;
    :cond_c
    const-string v2, "ActivityThread"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Application "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/app/ActivityThread$AppBindData;->info:Landroid/app/LoadedApk;

    invoke-virtual {v5}, Landroid/app/LoadedApk;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " can be debugged on port 8100..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 4128
    .restart local v12       #b:Landroid/os/IBinder;
    .restart local v21       #ii:Landroid/content/pm/InstrumentationInfo;
    :cond_d
    move-object/from16 v0, v21

    iget-object v2, v0, Landroid/content/pm/InstrumentationInfo;->sourceDir:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/app/ActivityThread;->mInstrumentationAppDir:Ljava/lang/String;

    .line 4129
    move-object/from16 v0, v21

    iget-object v2, v0, Landroid/content/pm/InstrumentationInfo;->nativeLibraryDir:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/app/ActivityThread;->mInstrumentationAppLibraryDir:Ljava/lang/String;

    .line 4130
    move-object/from16 v0, v21

    iget-object v2, v0, Landroid/content/pm/InstrumentationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/app/ActivityThread;->mInstrumentationAppPackage:Ljava/lang/String;

    .line 4131
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/app/ActivityThread$AppBindData;->info:Landroid/app/LoadedApk;

    invoke-virtual {v2}, Landroid/app/LoadedApk;->getAppDir()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/app/ActivityThread;->mInstrumentedAppDir:Ljava/lang/String;

    .line 4132
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/app/ActivityThread$AppBindData;->info:Landroid/app/LoadedApk;

    invoke-virtual {v2}, Landroid/app/LoadedApk;->getLibDir()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/app/ActivityThread;->mInstrumentedAppLibraryDir:Ljava/lang/String;

    .line 4134
    new-instance v3, Landroid/content/pm/ApplicationInfo;

    invoke-direct {v3}, Landroid/content/pm/ApplicationInfo;-><init>()V

    .line 4135
    .local v3, instrApp:Landroid/content/pm/ApplicationInfo;
    move-object/from16 v0, v21

    iget-object v2, v0, Landroid/content/pm/InstrumentationInfo;->packageName:Ljava/lang/String;

    iput-object v2, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 4136
    move-object/from16 v0, v21

    iget-object v2, v0, Landroid/content/pm/InstrumentationInfo;->sourceDir:Ljava/lang/String;

    iput-object v2, v3, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 4137
    move-object/from16 v0, v21

    iget-object v2, v0, Landroid/content/pm/InstrumentationInfo;->publicSourceDir:Ljava/lang/String;

    iput-object v2, v3, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 4138
    move-object/from16 v0, v21

    iget-object v2, v0, Landroid/content/pm/InstrumentationInfo;->dataDir:Ljava/lang/String;

    iput-object v2, v3, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    .line 4139
    move-object/from16 v0, v21

    iget-object v2, v0, Landroid/content/pm/InstrumentationInfo;->nativeLibraryDir:Ljava/lang/String;

    iput-object v2, v3, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    .line 4140
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/app/ActivityThread$AppBindData;->compatInfo:Landroid/content/res/CompatibilityInfo;

    invoke-virtual {v11}, Landroid/app/ContextImpl;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Landroid/app/ActivityThread;->getPackageInfo(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;Ljava/lang/ClassLoader;ZZ)Landroid/app/LoadedApk;

    move-result-object v23

    .line 4142
    .local v23, pi:Landroid/app/LoadedApk;
    new-instance v6, Landroid/app/ContextImpl;

    invoke-direct {v6}, Landroid/app/ContextImpl;-><init>()V

    .line 4143
    .local v6, instrContext:Landroid/app/ContextImpl;
    const/4 v2, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-virtual {v6, v0, v2, v1}, Landroid/app/ContextImpl;->init(Landroid/app/LoadedApk;Landroid/os/IBinder;Landroid/app/ActivityThread;)V

    .line 4146
    :try_start_4
    invoke-virtual {v6}, Landroid/app/ContextImpl;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v14

    .line 4147
    .local v14, cl:Ljava/lang/ClassLoader;
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/app/ActivityThread$AppBindData;->instrumentationName:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Instrumentation;

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 4155
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    new-instance v8, Landroid/content/ComponentName;

    move-object/from16 v0, v21

    iget-object v2, v0, Landroid/content/pm/InstrumentationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v21

    iget-object v5, v0, Landroid/content/pm/InstrumentationInfo;->name:Ljava/lang/String;

    invoke-direct {v8, v2, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/app/ActivityThread$AppBindData;->instrumentationWatcher:Landroid/app/IInstrumentationWatcher;

    move-object/from16 v5, p0

    move-object v7, v11

    invoke-virtual/range {v4 .. v9}, Landroid/app/Instrumentation;->init(Landroid/app/ActivityThread;Landroid/content/Context;Landroid/content/Context;Landroid/content/ComponentName;Landroid/app/IInstrumentationWatcher;)V

    .line 4158
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    iget-object v2, v2, Landroid/app/ActivityThread$Profiler;->profileFile:Ljava/lang/String;

    if-eqz v2, :cond_e

    move-object/from16 v0, v21

    iget-boolean v2, v0, Landroid/content/pm/InstrumentationInfo;->handleProfiling:Z

    if-nez v2, :cond_e

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    iget-object v2, v2, Landroid/app/ActivityThread$Profiler;->profileFd:Landroid/os/ParcelFileDescriptor;

    if-nez v2, :cond_e

    .line 4160
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    const/4 v4, 0x1

    iput-boolean v4, v2, Landroid/app/ActivityThread$Profiler;->handlingProfiling:Z

    .line 4161
    new-instance v17, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    iget-object v2, v2, Landroid/app/ActivityThread$Profiler;->profileFile:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4162
    .local v17, file:Ljava/io/File;
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 4163
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    const/high16 v4, 0x80

    invoke-static {v2, v4}, Landroid/os/Debug;->startMethodTracing(Ljava/lang/String;I)V

    .line 4170
    .end local v3           #instrApp:Landroid/content/pm/ApplicationInfo;
    .end local v6           #instrContext:Landroid/app/ContextImpl;
    .end local v14           #cl:Ljava/lang/ClassLoader;
    .end local v17           #file:Ljava/io/File;
    .end local v21           #ii:Landroid/content/pm/InstrumentationInfo;
    .end local v23           #pi:Landroid/app/LoadedApk;
    :cond_e
    :goto_4
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v4, 0x10

    and-int/2addr v2, v4

    if-eqz v2, :cond_f

    .line 4171
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v2

    invoke-virtual {v2}, Ldalvik/system/VMRuntime;->clearGrowthLimit()V

    .line 4177
    :cond_f
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v26

    .line 4181
    .local v26, savedPolicy:Landroid/os/StrictMode$ThreadPolicy;
    :try_start_5
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/app/ActivityThread$AppBindData;->info:Landroid/app/LoadedApk;

    move-object/from16 v0, p1

    iget-boolean v4, v0, Landroid/app/ActivityThread$AppBindData;->restrictedBackupMode:Z

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/app/LoadedApk;->makeApplication(ZLandroid/app/Instrumentation;)Landroid/app/Application;

    move-result-object v10

    .line 4182
    .local v10, app:Landroid/app/Application;
    move-object/from16 v0, p0

    iput-object v10, v0, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    .line 4186
    move-object/from16 v0, p1

    iget-boolean v2, v0, Landroid/app/ActivityThread$AppBindData;->restrictedBackupMode:Z

    if-nez v2, :cond_10

    .line 4187
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/app/ActivityThread$AppBindData;->providers:Ljava/util/List;

    move-object/from16 v24, v0

    .line 4188
    .local v24, providers:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ProviderInfo;>;"
    if-eqz v24, :cond_10

    .line 4189
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v10, v1}, Landroid/app/ActivityThread;->installContentProviders(Landroid/content/Context;Ljava/util/List;)V

    .line 4192
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    const/16 v4, 0x84

    const-wide/16 v7, 0x2710

    invoke-virtual {v2, v4, v7, v8}, Landroid/app/ActivityThread$H;->sendEmptyMessageDelayed(IJ)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 4199
    .end local v24           #providers:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ProviderInfo;>;"
    :cond_10
    :try_start_6
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/app/ActivityThread$AppBindData;->instrumentationArgs:Landroid/os/Bundle;

    invoke-virtual {v2, v4}, Landroid/app/Instrumentation;->onCreate(Landroid/os/Bundle;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 4208
    :try_start_7
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v2, v10}, Landroid/app/Instrumentation;->callApplicationOnCreate(Landroid/app/Application;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    .line 4217
    :cond_11
    invoke-static/range {v26 .. v26}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 4219
    return-void

    .line 4149
    .end local v10           #app:Landroid/app/Application;
    .end local v26           #savedPolicy:Landroid/os/StrictMode$ThreadPolicy;
    .restart local v3       #instrApp:Landroid/content/pm/ApplicationInfo;
    .restart local v6       #instrContext:Landroid/app/ContextImpl;
    .restart local v21       #ii:Landroid/content/pm/InstrumentationInfo;
    .restart local v23       #pi:Landroid/app/LoadedApk;
    :catch_0
    move-exception v16

    .line 4150
    .local v16, e:Ljava/lang/Exception;
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to instantiate instrumentation "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/app/ActivityThread$AppBindData;->instrumentationName:Landroid/content/ComponentName;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-direct {v2, v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 4167
    .end local v3           #instrApp:Landroid/content/pm/ApplicationInfo;
    .end local v6           #instrContext:Landroid/app/ContextImpl;
    .end local v16           #e:Ljava/lang/Exception;
    .end local v21           #ii:Landroid/content/pm/InstrumentationInfo;
    .end local v23           #pi:Landroid/app/LoadedApk;
    :cond_12
    new-instance v2, Landroid/app/Instrumentation;

    invoke-direct {v2}, Landroid/app/Instrumentation;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    goto/16 :goto_4

    .line 4201
    .restart local v10       #app:Landroid/app/Application;
    .restart local v26       #savedPolicy:Landroid/os/StrictMode$ThreadPolicy;
    :catch_1
    move-exception v16

    .line 4202
    .restart local v16       #e:Ljava/lang/Exception;
    :try_start_8
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception thrown in onCreate() of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/app/ActivityThread$AppBindData;->instrumentationName:Landroid/content/ComponentName;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-direct {v2, v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 4217
    .end local v10           #app:Landroid/app/Application;
    .end local v16           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    invoke-static/range {v26 .. v26}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v2

    .line 4209
    .restart local v10       #app:Landroid/app/Application;
    :catch_2
    move-exception v16

    .line 4210
    .restart local v16       #e:Ljava/lang/Exception;
    :try_start_9
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    move-object/from16 v0, v16

    invoke-virtual {v2, v10, v0}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_11

    .line 4211
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to create application "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-direct {v2, v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 4120
    .end local v10           #app:Landroid/app/Application;
    .end local v16           #e:Ljava/lang/Exception;
    .end local v26           #savedPolicy:Landroid/os/StrictMode$ThreadPolicy;
    .restart local v21       #ii:Landroid/content/pm/InstrumentationInfo;
    :catch_3
    move-exception v2

    goto/16 :goto_3

    .line 4112
    .end local v21           #ii:Landroid/content/pm/InstrumentationInfo;
    .restart local v27       #service:Landroid/net/IConnectivityManager;
    :catch_4
    move-exception v2

    goto/16 :goto_2

    .line 4086
    .end local v12           #b:Landroid/os/IBinder;
    .end local v27           #service:Landroid/net/IConnectivityManager;
    .restart local v22       #mgr:Landroid/app/IActivityManager;
    :catch_5
    move-exception v2

    goto/16 :goto_1

    .line 4079
    :catch_6
    move-exception v2

    goto/16 :goto_0
.end method

.method private handleBindService(Landroid/app/ActivityThread$BindServiceData;)V
    .locals 8
    .parameter "data"

    .prologue
    .line 2389
    iget-object v3, p0, Landroid/app/ActivityThread;->mServices:Ljava/util/HashMap;

    iget-object v4, p1, Landroid/app/ActivityThread$BindServiceData;->token:Landroid/os/IBinder;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Service;

    .line 2392
    .local v2, s:Landroid/app/Service;
    if-eqz v2, :cond_0

    .line 2394
    :try_start_0
    iget-object v3, p1, Landroid/app/ActivityThread$BindServiceData;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/app/Service;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 2396
    :try_start_1
    iget-boolean v3, p1, Landroid/app/ActivityThread$BindServiceData;->rebind:Z

    if-nez v3, :cond_1

    .line 2397
    iget-object v3, p1, Landroid/app/ActivityThread$BindServiceData;->intent:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Landroid/app/Service;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object v0

    .line 2398
    .local v0, binder:Landroid/os/IBinder;
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    iget-object v4, p1, Landroid/app/ActivityThread$BindServiceData;->token:Landroid/os/IBinder;

    iget-object v5, p1, Landroid/app/ActivityThread$BindServiceData;->intent:Landroid/content/Intent;

    invoke-interface {v3, v4, v5, v0}, Landroid/app/IActivityManager;->publishService(Landroid/os/IBinder;Landroid/content/Intent;Landroid/os/IBinder;)V

    .line 2405
    .end local v0           #binder:Landroid/os/IBinder;
    :goto_0
    invoke-virtual {p0}, Landroid/app/ActivityThread;->ensureJitEnabled()V

    .line 2416
    :cond_0
    :goto_1
    return-void

    .line 2401
    :cond_1
    iget-object v3, p1, Landroid/app/ActivityThread$BindServiceData;->intent:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Landroid/app/Service;->onRebind(Landroid/content/Intent;)V

    .line 2402
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    iget-object v4, p1, Landroid/app/ActivityThread$BindServiceData;->token:Landroid/os/IBinder;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface {v3, v4, v5, v6, v7}, Landroid/app/IActivityManager;->serviceDoneExecuting(Landroid/os/IBinder;III)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 2406
    :catch_0
    move-exception v3

    goto :goto_1

    .line 2408
    :catch_1
    move-exception v1

    .line 2409
    .local v1, e:Ljava/lang/Exception;
    iget-object v3, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v3, v2, v1}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2410
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to bind to service "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " with "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Landroid/app/ActivityThread$BindServiceData;->intent:Landroid/content/Intent;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method private handleCreateBackupAgent(Landroid/app/ActivityThread$CreateBackupAgentData;)V
    .locals 13
    .parameter "data"

    .prologue
    const/4 v12, 0x3

    .line 2262
    invoke-virtual {p0}, Landroid/app/ActivityThread;->unscheduleGcIdler()V

    .line 2265
    iget-object v9, p1, Landroid/app/ActivityThread$CreateBackupAgentData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v10, p1, Landroid/app/ActivityThread$CreateBackupAgentData;->compatInfo:Landroid/content/res/CompatibilityInfo;

    invoke-virtual {p0, v9, v10}, Landroid/app/ActivityThread;->getPackageInfoNoCheck(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;)Landroid/app/LoadedApk;

    move-result-object v7

    .line 2266
    .local v7, packageInfo:Landroid/app/LoadedApk;
    iget-object v8, v7, Landroid/app/LoadedApk;->mPackageName:Ljava/lang/String;

    .line 2267
    .local v8, packageName:Ljava/lang/String;
    iget-object v9, p0, Landroid/app/ActivityThread;->mBackupAgents:Ljava/util/HashMap;

    invoke-virtual {v9, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 2268
    const-string v9, "ActivityThread"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "BackupAgent   for "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " already exists"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2320
    :goto_0
    return-void

    .line 2273
    :cond_0
    const/4 v1, 0x0

    .line 2274
    .local v1, agent:Landroid/app/backup/BackupAgent;
    iget-object v9, p1, Landroid/app/ActivityThread$CreateBackupAgentData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v9, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    .line 2277
    .local v4, classname:Ljava/lang/String;
    if-nez v4, :cond_2

    iget v9, p1, Landroid/app/ActivityThread$CreateBackupAgentData;->backupMode:I

    const/4 v10, 0x1

    if-eq v9, v10, :cond_1

    iget v9, p1, Landroid/app/ActivityThread$CreateBackupAgentData;->backupMode:I

    if-ne v9, v12, :cond_2

    .line 2279
    :cond_1
    const-string v4, "android.app.backup.FullBackupAgent"

    .line 2283
    :cond_2
    const/4 v2, 0x0

    .line 2287
    .local v2, binder:Landroid/os/IBinder;
    :try_start_0
    invoke-virtual {v7}, Landroid/app/LoadedApk;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    .line 2288
    .local v3, cl:Ljava/lang/ClassLoader;
    invoke-virtual {v3, v4}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Landroid/app/backup/BackupAgent;

    move-object v1, v0

    .line 2291
    new-instance v5, Landroid/app/ContextImpl;

    invoke-direct {v5}, Landroid/app/ContextImpl;-><init>()V

    .line 2292
    .local v5, context:Landroid/app/ContextImpl;
    const/4 v9, 0x0

    invoke-virtual {v5, v7, v9, p0}, Landroid/app/ContextImpl;->init(Landroid/app/LoadedApk;Landroid/os/IBinder;Landroid/app/ActivityThread;)V

    .line 2293
    invoke-virtual {v5, v1}, Landroid/app/ContextImpl;->setOuterContext(Landroid/content/Context;)V

    .line 2294
    invoke-virtual {v1, v5}, Landroid/app/backup/BackupAgent;->attach(Landroid/content/Context;)V

    .line 2296
    invoke-virtual {v1}, Landroid/app/backup/BackupAgent;->onCreate()V

    .line 2297
    invoke-virtual {v1}, Landroid/app/backup/BackupAgent;->onBind()Landroid/os/IBinder;

    move-result-object v2

    .line 2298
    iget-object v9, p0, Landroid/app/ActivityThread;->mBackupAgents:Ljava/util/HashMap;

    invoke-virtual {v9, v8, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 2312
    .end local v3           #cl:Ljava/lang/ClassLoader;
    .end local v5           #context:Landroid/app/ContextImpl;
    :cond_3
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v9

    invoke-interface {v9, v8, v2}, Landroid/app/IActivityManager;->backupAgentCreated(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 2313
    :catch_0
    move-exception v9

    goto :goto_0

    .line 2299
    :catch_1
    move-exception v6

    .line 2302
    .local v6, e:Ljava/lang/Exception;
    :try_start_2
    const-string v9, "ActivityThread"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Agent threw during creation: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2303
    iget v9, p1, Landroid/app/ActivityThread$CreateBackupAgentData;->backupMode:I

    const/4 v10, 0x2

    if-eq v9, v10, :cond_3

    iget v9, p1, Landroid/app/ActivityThread$CreateBackupAgentData;->backupMode:I

    if-eq v9, v12, :cond_3

    .line 2305
    throw v6
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 2316
    .end local v6           #e:Ljava/lang/Exception;
    :catch_2
    move-exception v6

    .line 2317
    .restart local v6       #e:Ljava/lang/Exception;
    new-instance v9, Ljava/lang/RuntimeException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unable to create BackupAgent "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ": "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v9
.end method

.method private handleCreateService(Landroid/app/ActivityThread$CreateServiceData;)V
    .locals 12
    .parameter "data"

    .prologue
    .line 2345
    invoke-virtual {p0}, Landroid/app/ActivityThread;->unscheduleGcIdler()V

    .line 2347
    iget-object v3, p1, Landroid/app/ActivityThread$CreateServiceData;->info:Landroid/content/pm/ServiceInfo;

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, p1, Landroid/app/ActivityThread$CreateServiceData;->compatInfo:Landroid/content/res/CompatibilityInfo;

    invoke-virtual {p0, v3, v4}, Landroid/app/ActivityThread;->getPackageInfoNoCheck(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;)Landroid/app/LoadedApk;

    move-result-object v10

    .line 2349
    .local v10, packageInfo:Landroid/app/LoadedApk;
    const/4 v1, 0x0

    .line 2351
    .local v1, service:Landroid/app/Service;
    :try_start_0
    invoke-virtual {v10}, Landroid/app/LoadedApk;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v8

    .line 2352
    .local v8, cl:Ljava/lang/ClassLoader;
    iget-object v3, p1, Landroid/app/ActivityThread$CreateServiceData;->info:Landroid/content/pm/ServiceInfo;

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v8, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Landroid/app/Service;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2364
    .end local v8           #cl:Ljava/lang/ClassLoader;
    :cond_0
    :try_start_1
    new-instance v2, Landroid/app/ContextImpl;

    invoke-direct {v2}, Landroid/app/ContextImpl;-><init>()V

    .line 2365
    .local v2, context:Landroid/app/ContextImpl;
    const/4 v3, 0x0

    invoke-virtual {v2, v10, v3, p0}, Landroid/app/ContextImpl;->init(Landroid/app/LoadedApk;Landroid/os/IBinder;Landroid/app/ActivityThread;)V

    .line 2367
    const/4 v3, 0x0

    iget-object v4, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v10, v3, v4}, Landroid/app/LoadedApk;->makeApplication(ZLandroid/app/Instrumentation;)Landroid/app/Application;

    move-result-object v6

    .line 2368
    .local v6, app:Landroid/app/Application;
    invoke-virtual {v2, v1}, Landroid/app/ContextImpl;->setOuterContext(Landroid/content/Context;)V

    .line 2369
    iget-object v3, p1, Landroid/app/ActivityThread$CreateServiceData;->info:Landroid/content/pm/ServiceInfo;

    iget-object v4, v3, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    iget-object v5, p1, Landroid/app/ActivityThread$CreateServiceData;->token:Landroid/os/IBinder;

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v7

    move-object v3, p0

    invoke-virtual/range {v1 .. v7}, Landroid/app/Service;->attach(Landroid/content/Context;Landroid/app/ActivityThread;Ljava/lang/String;Landroid/os/IBinder;Landroid/app/Application;Ljava/lang/Object;)V

    .line 2371
    invoke-virtual {v1}, Landroid/app/Service;->onCreate()V

    .line 2372
    iget-object v3, p0, Landroid/app/ActivityThread;->mServices:Ljava/util/HashMap;

    iget-object v4, p1, Landroid/app/ActivityThread$CreateServiceData;->token:Landroid/os/IBinder;

    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 2374
    :try_start_2
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    iget-object v4, p1, Landroid/app/ActivityThread$CreateServiceData;->token:Landroid/os/IBinder;

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v11, 0x0

    invoke-interface {v3, v4, v5, v7, v11}, Landroid/app/IActivityManager;->serviceDoneExecuting(Landroid/os/IBinder;III)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 2386
    .end local v2           #context:Landroid/app/ContextImpl;
    .end local v6           #app:Landroid/app/Application;
    :cond_1
    :goto_0
    return-void

    .line 2353
    :catch_0
    move-exception v9

    .line 2354
    .local v9, e:Ljava/lang/Exception;
    iget-object v3, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v3, v1, v9}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2355
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to instantiate service "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Landroid/app/ActivityThread$CreateServiceData;->info:Landroid/content/pm/ServiceInfo;

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 2379
    .end local v9           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v9

    .line 2380
    .restart local v9       #e:Ljava/lang/Exception;
    iget-object v3, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v3, v1, v9}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2381
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to create service "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Landroid/app/ActivityThread$CreateServiceData;->info:Landroid/content/pm/ServiceInfo;

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 2376
    .end local v9           #e:Ljava/lang/Exception;
    .restart local v2       #context:Landroid/app/ContextImpl;
    .restart local v6       #app:Landroid/app/Application;
    :catch_2
    move-exception v3

    goto :goto_0
.end method

.method private handleDestroyActivity(Landroid/os/IBinder;ZIZ)V
    .locals 8
    .parameter "token"
    .parameter "finishing"
    .parameter "configChanges"
    .parameter "getNonConfigInstance"

    .prologue
    .line 3306
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/app/ActivityThread;->performDestroyActivity(Landroid/os/IBinder;ZIZ)Landroid/app/ActivityThread$ActivityClientRecord;

    move-result-object v1

    .line 3308
    .local v1, r:Landroid/app/ActivityThread$ActivityClientRecord;
    if-eqz v1, :cond_5

    .line 3309
    invoke-static {v1}, Landroid/app/ActivityThread;->cleanUpPendingRemoveWindows(Landroid/app/ActivityThread$ActivityClientRecord;)V

    .line 3310
    iget-object v5, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    .line 3311
    .local v3, wm:Landroid/view/WindowManager;
    iget-object v5, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-object v2, v5, Landroid/app/Activity;->mDecor:Landroid/view/View;

    .line 3312
    .local v2, v:Landroid/view/View;
    if-eqz v2, :cond_3

    .line 3313
    iget-object v5, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v5, v5, Landroid/app/Activity;->mVisibleFromServer:Z

    if-eqz v5, :cond_0

    .line 3314
    iget v5, p0, Landroid/app/ActivityThread;->mNumVisibleActivities:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Landroid/app/ActivityThread;->mNumVisibleActivities:I

    .line 3316
    :cond_0
    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    .line 3317
    .local v4, wtoken:Landroid/os/IBinder;
    iget-object v5, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v5, v5, Landroid/app/Activity;->mWindowAdded:Z

    if-eqz v5, :cond_1

    .line 3318
    iget-boolean v5, v1, Landroid/app/ActivityThread$ActivityClientRecord;->onlyLocalRequest:Z

    if-eqz v5, :cond_7

    .line 3321
    iput-object v2, v1, Landroid/app/ActivityThread$ActivityClientRecord;->mPendingRemoveWindow:Landroid/view/View;

    .line 3322
    iput-object v3, v1, Landroid/app/ActivityThread$ActivityClientRecord;->mPendingRemoveWindowManager:Landroid/view/WindowManager;

    .line 3327
    :cond_1
    :goto_0
    if-eqz v4, :cond_2

    iget-object v5, v1, Landroid/app/ActivityThread$ActivityClientRecord;->mPendingRemoveWindow:Landroid/view/View;

    if-nez v5, :cond_2

    .line 3328
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v5

    iget-object v6, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Activity"

    invoke-virtual {v5, v4, v6, v7}, Landroid/view/WindowManagerImpl;->closeAll(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;)V

    .line 3331
    :cond_2
    iget-object v5, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    const/4 v6, 0x0

    iput-object v6, v5, Landroid/app/Activity;->mDecor:Landroid/view/View;

    .line 3333
    .end local v4           #wtoken:Landroid/os/IBinder;
    :cond_3
    iget-object v5, v1, Landroid/app/ActivityThread$ActivityClientRecord;->mPendingRemoveWindow:Landroid/view/View;

    if-nez v5, :cond_4

    .line 3340
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v5

    iget-object v6, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Activity"

    invoke-virtual {v5, p1, v6, v7}, Landroid/view/WindowManagerImpl;->closeAll(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;)V

    .line 3348
    :cond_4
    iget-object v5, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    .line 3349
    .local v0, c:Landroid/content/Context;
    instance-of v5, v0, Landroid/app/ContextImpl;

    if-eqz v5, :cond_5

    .line 3350
    check-cast v0, Landroid/app/ContextImpl;

    .end local v0           #c:Landroid/content/Context;
    iget-object v5, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Activity"

    invoke-virtual {v0, v5, v6}, Landroid/app/ContextImpl;->scheduleFinalCleanup(Ljava/lang/String;Ljava/lang/String;)V

    .line 3354
    .end local v2           #v:Landroid/view/View;
    .end local v3           #wm:Landroid/view/WindowManager;
    :cond_5
    if-eqz p2, :cond_6

    .line 3356
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    invoke-interface {v5, p1}, Landroid/app/IActivityManager;->activityDestroyed(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3361
    :cond_6
    :goto_1
    return-void

    .line 3324
    .restart local v2       #v:Landroid/view/View;
    .restart local v3       #wm:Landroid/view/WindowManager;
    .restart local v4       #wtoken:Landroid/os/IBinder;
    :cond_7
    invoke-interface {v3, v2}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    goto :goto_0

    .line 3357
    .end local v2           #v:Landroid/view/View;
    .end local v3           #wm:Landroid/view/WindowManager;
    .end local v4           #wtoken:Landroid/os/IBinder;
    :catch_0
    move-exception v5

    goto :goto_1
.end method

.method private handleDestroyBackupAgent(Landroid/app/ActivityThread$CreateBackupAgentData;)V
    .locals 7
    .parameter "data"

    .prologue
    .line 2326
    iget-object v4, p1, Landroid/app/ActivityThread$CreateBackupAgentData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, p1, Landroid/app/ActivityThread$CreateBackupAgentData;->compatInfo:Landroid/content/res/CompatibilityInfo;

    invoke-virtual {p0, v4, v5}, Landroid/app/ActivityThread;->getPackageInfoNoCheck(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;)Landroid/app/LoadedApk;

    move-result-object v2

    .line 2327
    .local v2, packageInfo:Landroid/app/LoadedApk;
    iget-object v3, v2, Landroid/app/LoadedApk;->mPackageName:Ljava/lang/String;

    .line 2328
    .local v3, packageName:Ljava/lang/String;
    iget-object v4, p0, Landroid/app/ActivityThread;->mBackupAgents:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/backup/BackupAgent;

    .line 2329
    .local v0, agent:Landroid/app/backup/BackupAgent;
    if-eqz v0, :cond_0

    .line 2331
    :try_start_0
    invoke-virtual {v0}, Landroid/app/backup/BackupAgent;->onDestroy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2336
    :goto_0
    iget-object v4, p0, Landroid/app/ActivityThread;->mBackupAgents:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2340
    :goto_1
    return-void

    .line 2332
    :catch_0
    move-exception v1

    .line 2333
    .local v1, e:Ljava/lang/Exception;
    const-string v4, "ActivityThread"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception thrown in onDestroy by backup agent of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Landroid/app/ActivityThread$CreateBackupAgentData;->appInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2334
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 2338
    .end local v1           #e:Ljava/lang/Exception;
    :cond_0
    const-string v4, "ActivityThread"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Attempt to destroy unknown backup agent "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private handleDumpActivity(Landroid/app/ActivityThread$DumpComponentInfo;)V
    .locals 7
    .parameter "info"

    .prologue
    .line 2460
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 2462
    .local v0, oldPolicy:Landroid/os/StrictMode$ThreadPolicy;
    :try_start_0
    iget-object v3, p0, Landroid/app/ActivityThread;->mActivities:Ljava/util/HashMap;

    iget-object v4, p1, Landroid/app/ActivityThread$DumpComponentInfo;->token:Landroid/os/IBinder;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 2463
    .local v2, r:Landroid/app/ActivityThread$ActivityClientRecord;
    if-eqz v2, :cond_0

    iget-object v3, v2, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    if-eqz v3, :cond_0

    .line 2464
    new-instance v1, Ljava/io/PrintWriter;

    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v4, p1, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v1, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 2465
    .local v1, pw:Ljava/io/PrintWriter;
    iget-object v3, v2, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-object v4, p1, Landroid/app/ActivityThread$DumpComponentInfo;->prefix:Ljava/lang/String;

    iget-object v5, p1, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    iget-object v6, p1, Landroid/app/ActivityThread$DumpComponentInfo;->args:[Ljava/lang/String;

    invoke-virtual {v3, v4, v5, v1, v6}, Landroid/app/Activity;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2466
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2469
    .end local v1           #pw:Ljava/io/PrintWriter;
    :cond_0
    iget-object v3, p1, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 2470
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 2472
    return-void

    .line 2469
    .end local v2           #r:Landroid/app/ActivityThread$ActivityClientRecord;
    :catchall_0
    move-exception v3

    iget-object v4, p1, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 2470
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 2469
    throw v3
.end method

.method static final handleDumpHeap(ZLandroid/app/ActivityThread$DumpHeapData;)V
    .locals 4
    .parameter "managed"
    .parameter "dhd"

    .prologue
    .line 3841
    if-eqz p0, :cond_0

    .line 3843
    :try_start_0
    iget-object v1, p1, Landroid/app/ActivityThread$DumpHeapData;->path:Ljava/lang/String;

    iget-object v2, p1, Landroid/app/ActivityThread$DumpHeapData;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/Debug;->dumpHprofData(Ljava/lang/String;Ljava/io/FileDescriptor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3849
    :try_start_1
    iget-object v1, p1, Landroid/app/ActivityThread$DumpHeapData;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 3857
    :goto_0
    return-void

    .line 3844
    :catch_0
    move-exception v0

    .line 3845
    .local v0, e:Ljava/io/IOException;
    :try_start_2
    const-string v1, "ActivityThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Managed heap dump failed on path "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/app/ActivityThread$DumpHeapData;->path:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " -- can the process access this path?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3849
    :try_start_3
    iget-object v1, p1, Landroid/app/ActivityThread$DumpHeapData;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 3850
    :catch_1
    move-exception v0

    .line 3851
    const-string v1, "ActivityThread"

    const-string v2, "Failure closing profile fd"

    :goto_1
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 3848
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v1

    .line 3849
    :try_start_4
    iget-object v2, p1, Landroid/app/ActivityThread$DumpHeapData;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 3848
    :goto_2
    throw v1

    .line 3855
    :cond_0
    iget-object v1, p1, Landroid/app/ActivityThread$DumpHeapData;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-static {v1}, Landroid/os/Debug;->dumpNativeHeap(Ljava/io/FileDescriptor;)V

    goto :goto_0

    .line 3850
    :catch_2
    move-exception v0

    .line 3851
    .restart local v0       #e:Ljava/io/IOException;
    const-string v2, "ActivityThread"

    const-string v3, "Failure closing profile fd"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 3850
    .end local v0           #e:Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 3851
    .restart local v0       #e:Ljava/io/IOException;
    const-string v1, "ActivityThread"

    const-string v2, "Failure closing profile fd"

    goto :goto_1
.end method

.method private handleDumpProvider(Landroid/app/ActivityThread$DumpComponentInfo;)V
    .locals 6
    .parameter "info"

    .prologue
    .line 2475
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 2477
    .local v0, oldPolicy:Landroid/os/StrictMode$ThreadPolicy;
    :try_start_0
    iget-object v3, p0, Landroid/app/ActivityThread;->mLocalProviders:Ljava/util/HashMap;

    iget-object v4, p1, Landroid/app/ActivityThread$DumpComponentInfo;->token:Landroid/os/IBinder;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityThread$ProviderClientRecord;

    .line 2478
    .local v2, r:Landroid/app/ActivityThread$ProviderClientRecord;
    if-eqz v2, :cond_0

    iget-object v3, v2, Landroid/app/ActivityThread$ProviderClientRecord;->mLocalProvider:Landroid/content/ContentProvider;

    if-eqz v3, :cond_0

    .line 2479
    new-instance v1, Ljava/io/PrintWriter;

    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v4, p1, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v1, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 2480
    .local v1, pw:Ljava/io/PrintWriter;
    iget-object v3, v2, Landroid/app/ActivityThread$ProviderClientRecord;->mLocalProvider:Landroid/content/ContentProvider;

    iget-object v4, p1, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    iget-object v5, p1, Landroid/app/ActivityThread$DumpComponentInfo;->args:[Ljava/lang/String;

    invoke-virtual {v3, v4, v1, v5}, Landroid/content/ContentProvider;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2481
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2484
    .end local v1           #pw:Ljava/io/PrintWriter;
    :cond_0
    iget-object v3, p1, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 2485
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 2487
    return-void

    .line 2484
    .end local v2           #r:Landroid/app/ActivityThread$ProviderClientRecord;
    :catchall_0
    move-exception v3

    iget-object v4, p1, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 2485
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 2484
    throw v3
.end method

.method private handleDumpService(Landroid/app/ActivityThread$DumpComponentInfo;)V
    .locals 5
    .parameter "info"

    .prologue
    .line 2445
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 2447
    .local v0, oldPolicy:Landroid/os/StrictMode$ThreadPolicy;
    :try_start_0
    iget-object v3, p0, Landroid/app/ActivityThread;->mServices:Ljava/util/HashMap;

    iget-object v4, p1, Landroid/app/ActivityThread$DumpComponentInfo;->token:Landroid/os/IBinder;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Service;

    .line 2448
    .local v2, s:Landroid/app/Service;
    if-eqz v2, :cond_0

    .line 2449
    new-instance v1, Ljava/io/PrintWriter;

    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v4, p1, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v1, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 2450
    .local v1, pw:Ljava/io/PrintWriter;
    iget-object v3, p1, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    iget-object v4, p1, Landroid/app/ActivityThread$DumpComponentInfo;->args:[Ljava/lang/String;

    invoke-virtual {v2, v3, v1, v4}, Landroid/app/Service;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2451
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2454
    .end local v1           #pw:Ljava/io/PrintWriter;
    :cond_0
    iget-object v3, p1, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 2455
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 2457
    return-void

    .line 2454
    .end local v2           #s:Landroid/app/Service;
    :catchall_0
    move-exception v3

    iget-object v4, p1, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 2455
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 2454
    throw v3
.end method

.method private handleLaunchActivity(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/content/Intent;)V
    .locals 8
    .parameter "r"
    .parameter "customIntent"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 2079
    invoke-virtual {p0}, Landroid/app/ActivityThread;->unscheduleGcIdler()V

    .line 2081
    iget-object v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->profileFd:Landroid/os/ParcelFileDescriptor;

    if-eqz v3, :cond_0

    .line 2082
    iget-object v3, p0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    iget-object v4, p1, Landroid/app/ActivityThread$ActivityClientRecord;->profileFile:Ljava/lang/String;

    iget-object v5, p1, Landroid/app/ActivityThread$ActivityClientRecord;->profileFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v3, v4, v5}, Landroid/app/ActivityThread$Profiler;->setProfiler(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)V

    .line 2083
    iget-object v3, p0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    invoke-virtual {v3}, Landroid/app/ActivityThread$Profiler;->startProfiling()V

    .line 2084
    iget-object v3, p0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    iget-boolean v4, p1, Landroid/app/ActivityThread$ActivityClientRecord;->autoStopProfiler:Z

    iput-boolean v4, v3, Landroid/app/ActivityThread$Profiler;->autoStopProfiler:Z

    .line 2088
    :cond_0
    invoke-virtual {p0, v7, v7}, Landroid/app/ActivityThread;->handleConfigurationChanged(Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)V

    .line 2092
    invoke-direct {p0, p1, p2}, Landroid/app/ActivityThread;->performLaunchActivity(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/content/Intent;)Landroid/app/Activity;

    move-result-object v0

    .line 2094
    .local v0, a:Landroid/app/Activity;
    if-eqz v0, :cond_4

    .line 2095
    new-instance v3, Landroid/content/res/Configuration;

    iget-object v4, p0, Landroid/app/ActivityThread;->mConfiguration:Landroid/content/res/Configuration;

    invoke-direct {v3, v4}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->createdConfig:Landroid/content/res/Configuration;

    .line 2096
    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    .line 2097
    .local v2, oldState:Landroid/os/Bundle;
    iget-object v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    iget-boolean v4, p1, Landroid/app/ActivityThread$ActivityClientRecord;->isForward:Z

    invoke-virtual {p0, v3, v6, v4}, Landroid/app/ActivityThread;->handleResumeActivity(Landroid/os/IBinder;ZZ)V

    .line 2099
    iget-object v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v3, v3, Landroid/app/Activity;->mFinished:Z

    if-nez v3, :cond_3

    iget-boolean v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->startsNotResumed:Z

    if-eqz v3, :cond_3

    .line 2110
    :try_start_0
    iget-object v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    const/4 v4, 0x0

    iput-boolean v4, v3, Landroid/app/Activity;->mCalled:Z

    .line 2111
    iget-object v3, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v4, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v3, v4}, Landroid/app/Instrumentation;->callActivityOnPause(Landroid/app/Activity;)V

    .line 2119
    invoke-virtual {p1}, Landroid/app/ActivityThread$ActivityClientRecord;->isPreHoneycomb()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2120
    iput-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    .line 2122
    :cond_1
    iget-object v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v3, v3, Landroid/app/Activity;->mCalled:Z

    if-nez v3, :cond_2

    .line 2123
    new-instance v3, Landroid/app/SuperNotCalledException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Activity "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " did not call through to super.onPause()"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Landroid/app/SuperNotCalledException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 2128
    :catch_0
    move-exception v1

    .line 2129
    .local v1, e:Landroid/app/SuperNotCalledException;
    throw v1

    .line 2131
    .end local v1           #e:Landroid/app/SuperNotCalledException;
    :catch_1
    move-exception v1

    .line 2132
    .local v1, e:Ljava/lang/Exception;
    iget-object v3, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v4, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v3, v4, v1}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 2133
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to pause activity "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 2139
    .end local v1           #e:Ljava/lang/Exception;
    :cond_2
    const/4 v3, 0x1

    iput-boolean v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->paused:Z

    .line 2151
    .end local v2           #oldState:Landroid/os/Bundle;
    :cond_3
    :goto_0
    return-void

    .line 2145
    :cond_4
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    iget-object v4, p1, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface {v3, v4, v5, v6}, Landroid/app/IActivityManager;->finishActivity(Landroid/os/IBinder;ILandroid/content/Intent;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 2147
    :catch_2
    move-exception v3

    goto :goto_0
.end method

.method private handleNewIntent(Landroid/app/ActivityThread$NewIntentData;)V
    .locals 2
    .parameter "data"

    .prologue
    .line 2182
    iget-object v0, p1, Landroid/app/ActivityThread$NewIntentData;->token:Landroid/os/IBinder;

    iget-object v1, p1, Landroid/app/ActivityThread$NewIntentData;->intents:Ljava/util/List;

    invoke-virtual {p0, v0, v1}, Landroid/app/ActivityThread;->performNewIntents(Landroid/os/IBinder;Ljava/util/List;)V

    .line 2183
    return-void
.end method

.method private handlePauseActivity(Landroid/os/IBinder;ZZI)V
    .locals 3
    .parameter "token"
    .parameter "finished"
    .parameter "userLeaving"
    .parameter "configChanges"

    .prologue
    .line 2772
    iget-object v1, p0, Landroid/app/ActivityThread;->mActivities:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 2773
    .local v0, r:Landroid/app/ActivityThread$ActivityClientRecord;
    if-eqz v0, :cond_2

    .line 2775
    if-eqz p3, :cond_0

    .line 2776
    invoke-virtual {p0, v0}, Landroid/app/ActivityThread;->performUserLeavingActivity(Landroid/app/ActivityThread$ActivityClientRecord;)V

    .line 2779
    :cond_0
    iget-object v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget v2, v1, Landroid/app/Activity;->mConfigChangeFlags:I

    or-int/2addr v2, p4

    iput v2, v1, Landroid/app/Activity;->mConfigChangeFlags:I

    .line 2780
    invoke-virtual {v0}, Landroid/app/ActivityThread$ActivityClientRecord;->isPreHoneycomb()Z

    move-result v1

    invoke-virtual {p0, p1, p2, v1}, Landroid/app/ActivityThread;->performPauseActivity(Landroid/os/IBinder;ZZ)Landroid/os/Bundle;

    .line 2783
    invoke-virtual {v0}, Landroid/app/ActivityThread$ActivityClientRecord;->isPreHoneycomb()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2784
    invoke-static {}, Landroid/app/QueuedWork;->waitToFinish()V

    .line 2789
    :cond_1
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/app/IActivityManager;->activityPaused(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2793
    :cond_2
    :goto_0
    return-void

    .line 2790
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private handleReceiver(Landroid/app/ActivityThread$ReceiverData;)V
    .locals 12
    .parameter "data"

    .prologue
    const/4 v11, 0x0

    .line 2199
    invoke-virtual {p0}, Landroid/app/ActivityThread;->unscheduleGcIdler()V

    .line 2201
    iget-object v8, p1, Landroid/app/ActivityThread$ReceiverData;->intent:Landroid/content/Intent;

    invoke-virtual {v8}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    .line 2203
    .local v2, component:Ljava/lang/String;
    iget-object v8, p1, Landroid/app/ActivityThread$ReceiverData;->info:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v9, p1, Landroid/app/ActivityThread$ReceiverData;->compatInfo:Landroid/content/res/CompatibilityInfo;

    invoke-virtual {p0, v8, v9}, Landroid/app/ActivityThread;->getPackageInfoNoCheck(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;)Landroid/app/LoadedApk;

    move-result-object v6

    .line 2206
    .local v6, packageInfo:Landroid/app/LoadedApk;
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    .line 2210
    .local v5, mgr:Landroid/app/IActivityManager;
    :try_start_0
    invoke-virtual {v6}, Landroid/app/LoadedApk;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 2211
    .local v1, cl:Ljava/lang/ClassLoader;
    iget-object v8, p1, Landroid/app/ActivityThread$ReceiverData;->intent:Landroid/content/Intent;

    invoke-virtual {v8, v1}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 2212
    invoke-virtual {p1, v1}, Landroid/app/ActivityThread$ReceiverData;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 2213
    invoke-virtual {v1, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/BroadcastReceiver;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2224
    .local v7, receiver:Landroid/content/BroadcastReceiver;
    const/4 v8, 0x0

    :try_start_1
    iget-object v9, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v6, v8, v9}, Landroid/app/LoadedApk;->makeApplication(ZLandroid/app/Instrumentation;)Landroid/app/Application;

    move-result-object v0

    .line 2234
    .local v0, app:Landroid/app/Application;
    invoke-virtual {v0}, Landroid/app/Application;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Landroid/app/ContextImpl;

    .line 2235
    .local v3, context:Landroid/app/ContextImpl;
    sget-object v8, Landroid/app/ActivityThread;->sCurrentBroadcastIntent:Ljava/lang/ThreadLocal;

    iget-object v9, p1, Landroid/app/ActivityThread$ReceiverData;->intent:Landroid/content/Intent;

    invoke-virtual {v8, v9}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 2236
    invoke-virtual {v7, p1}, Landroid/content/BroadcastReceiver;->setPendingResult(Landroid/content/BroadcastReceiver$PendingResult;)V

    .line 2237
    invoke-virtual {v3}, Landroid/app/ContextImpl;->getReceiverRestrictedContext()Landroid/content/Context;

    move-result-object v8

    iget-object v9, p1, Landroid/app/ActivityThread$ReceiverData;->intent:Landroid/content/Intent;

    invoke-virtual {v7, v8, v9}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 2249
    sget-object v8, Landroid/app/ActivityThread;->sCurrentBroadcastIntent:Ljava/lang/ThreadLocal;

    .end local v0           #app:Landroid/app/Application;
    .end local v3           #context:Landroid/app/ContextImpl;
    :goto_0
    invoke-virtual {v8, v11}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 2252
    invoke-virtual {v7}, Landroid/content/BroadcastReceiver;->getPendingResult()Landroid/content/BroadcastReceiver$PendingResult;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 2253
    invoke-virtual {p1}, Landroid/app/ActivityThread$ReceiverData;->finish()V

    .line 2255
    :cond_0
    return-void

    .line 2214
    .end local v1           #cl:Ljava/lang/ClassLoader;
    .end local v7           #receiver:Landroid/content/BroadcastReceiver;
    :catch_0
    move-exception v4

    .line 2217
    .local v4, e:Ljava/lang/Exception;
    invoke-virtual {p1, v5}, Landroid/app/ActivityThread$ReceiverData;->sendFinished(Landroid/app/IActivityManager;)V

    .line 2218
    new-instance v8, Ljava/lang/RuntimeException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unable to instantiate receiver "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ": "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8

    .line 2239
    .end local v4           #e:Ljava/lang/Exception;
    .restart local v1       #cl:Ljava/lang/ClassLoader;
    .restart local v7       #receiver:Landroid/content/BroadcastReceiver;
    :catch_1
    move-exception v4

    .line 2242
    .restart local v4       #e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {p1, v5}, Landroid/app/ActivityThread$ReceiverData;->sendFinished(Landroid/app/IActivityManager;)V

    .line 2243
    iget-object v8, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v8, v7, v4}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 2244
    new-instance v8, Ljava/lang/RuntimeException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unable to start receiver "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ": "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2249
    .end local v4           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    sget-object v9, Landroid/app/ActivityThread;->sCurrentBroadcastIntent:Ljava/lang/ThreadLocal;

    invoke-virtual {v9, v11}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    throw v8

    .restart local v4       #e:Ljava/lang/Exception;
    :cond_1
    sget-object v8, Landroid/app/ActivityThread;->sCurrentBroadcastIntent:Ljava/lang/ThreadLocal;

    goto :goto_0
.end method

.method private handleRelaunchActivity(Landroid/app/ActivityThread$ActivityClientRecord;)V
    .locals 13
    .parameter "tmp"

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    const/4 v10, 0x0

    .line 3422
    invoke-virtual {p0}, Landroid/app/ActivityThread;->unscheduleGcIdler()V

    .line 3424
    const/4 v1, 0x0

    .line 3425
    .local v1, changedConfig:Landroid/content/res/Configuration;
    const/4 v2, 0x0

    .line 3430
    .local v2, configChanges:I
    iget-object v8, p0, Landroid/app/ActivityThread;->mPackages:Ljava/util/HashMap;

    monitor-enter v8

    .line 3431
    :try_start_0
    iget-object v7, p0, Landroid/app/ActivityThread;->mRelaunchingActivities:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3432
    .local v0, N:I
    iget-object v6, p1, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    .line 3433
    .local v6, token:Landroid/os/IBinder;
    const/4 p1, 0x0

    .line 3434
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v0, :cond_1

    .line 3435
    iget-object v7, p0, Landroid/app/ActivityThread;->mRelaunchingActivities:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 3436
    .local v5, r:Landroid/app/ActivityThread$ActivityClientRecord;
    iget-object v7, v5, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    if-ne v7, v6, :cond_0

    .line 3437
    move-object p1, v5

    .line 3438
    iget v7, p1, Landroid/app/ActivityThread$ActivityClientRecord;->pendingConfigChanges:I

    or-int/2addr v2, v7

    .line 3439
    iget-object v7, p0, Landroid/app/ActivityThread;->mRelaunchingActivities:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3440
    add-int/lit8 v4, v4, -0x1

    .line 3441
    add-int/lit8 v0, v0, -0x1

    .line 3434
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 3445
    .end local v5           #r:Landroid/app/ActivityThread$ActivityClientRecord;
    :cond_1
    if-nez p1, :cond_3

    .line 3447
    monitor-exit v8

    .line 3528
    :cond_2
    :goto_1
    return-void

    .line 3454
    :cond_3
    iget-object v7, p0, Landroid/app/ActivityThread;->mPendingConfiguration:Landroid/content/res/Configuration;

    if-eqz v7, :cond_4

    .line 3455
    iget-object v1, p0, Landroid/app/ActivityThread;->mPendingConfiguration:Landroid/content/res/Configuration;

    .line 3456
    const/4 v7, 0x0

    iput-object v7, p0, Landroid/app/ActivityThread;->mPendingConfiguration:Landroid/content/res/Configuration;

    .line 3458
    :cond_4
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3460
    iget-object v7, p1, Landroid/app/ActivityThread$ActivityClientRecord;->createdConfig:Landroid/content/res/Configuration;

    if-eqz v7, :cond_7

    .line 3464
    iget-object v7, p0, Landroid/app/ActivityThread;->mConfiguration:Landroid/content/res/Configuration;

    if-eqz v7, :cond_5

    iget-object v7, p1, Landroid/app/ActivityThread$ActivityClientRecord;->createdConfig:Landroid/content/res/Configuration;

    iget-object v8, p0, Landroid/app/ActivityThread;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v7, v8}, Landroid/content/res/Configuration;->isOtherSeqNewer(Landroid/content/res/Configuration;)Z

    move-result v7

    if-eqz v7, :cond_7

    iget-object v7, p0, Landroid/app/ActivityThread;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v8, p1, Landroid/app/ActivityThread$ActivityClientRecord;->createdConfig:Landroid/content/res/Configuration;

    invoke-virtual {v7, v8}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v7

    if-eqz v7, :cond_7

    .line 3467
    :cond_5
    if-eqz v1, :cond_6

    iget-object v7, p1, Landroid/app/ActivityThread$ActivityClientRecord;->createdConfig:Landroid/content/res/Configuration;

    invoke-virtual {v7, v1}, Landroid/content/res/Configuration;->isOtherSeqNewer(Landroid/content/res/Configuration;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 3469
    :cond_6
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->createdConfig:Landroid/content/res/Configuration;

    .line 3478
    :cond_7
    if-eqz v1, :cond_8

    .line 3479
    invoke-virtual {p0, v1, v10}, Landroid/app/ActivityThread;->handleConfigurationChanged(Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)V

    .line 3482
    :cond_8
    iget-object v7, p0, Landroid/app/ActivityThread;->mActivities:Ljava/util/HashMap;

    iget-object v8, p1, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 3484
    .restart local v5       #r:Landroid/app/ActivityThread$ActivityClientRecord;
    if-eqz v5, :cond_2

    .line 3488
    iget-object v7, v5, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget v8, v7, Landroid/app/Activity;->mConfigChangeFlags:I

    or-int/2addr v8, v2

    iput v8, v7, Landroid/app/Activity;->mConfigChangeFlags:I

    .line 3489
    iget-boolean v7, p1, Landroid/app/ActivityThread$ActivityClientRecord;->onlyLocalRequest:Z

    iput-boolean v7, v5, Landroid/app/ActivityThread$ActivityClientRecord;->onlyLocalRequest:Z

    .line 3490
    iget-object v7, v5, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-object v3, v7, Landroid/app/Activity;->mIntent:Landroid/content/Intent;

    .line 3492
    .local v3, currentIntent:Landroid/content/Intent;
    iget-object v7, v5, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iput-boolean v12, v7, Landroid/app/Activity;->mChangingConfigurations:Z

    .line 3495
    iget-boolean v7, v5, Landroid/app/ActivityThread$ActivityClientRecord;->paused:Z

    if-nez v7, :cond_9

    .line 3496
    iget-object v7, v5, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    invoke-virtual {v5}, Landroid/app/ActivityThread$ActivityClientRecord;->isPreHoneycomb()Z

    move-result v8

    invoke-virtual {p0, v7, v11, v8}, Landroid/app/ActivityThread;->performPauseActivity(Landroid/os/IBinder;ZZ)Landroid/os/Bundle;

    .line 3498
    :cond_9
    iget-object v7, v5, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    if-nez v7, :cond_a

    iget-boolean v7, v5, Landroid/app/ActivityThread$ActivityClientRecord;->stopped:Z

    if-nez v7, :cond_a

    invoke-virtual {v5}, Landroid/app/ActivityThread$ActivityClientRecord;->isPreHoneycomb()Z

    move-result v7

    if-nez v7, :cond_a

    .line 3499
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    iput-object v7, v5, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    .line 3500
    iget-object v7, v5, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    invoke-virtual {v7, v11}, Landroid/os/Bundle;->setAllowFds(Z)Z

    .line 3501
    iget-object v7, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v8, v5, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-object v9, v5, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    invoke-virtual {v7, v8, v9}, Landroid/app/Instrumentation;->callActivityOnSaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 3504
    :cond_a
    iget-object v7, v5, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    invoke-direct {p0, v7, v11, v2, v12}, Landroid/app/ActivityThread;->handleDestroyActivity(Landroid/os/IBinder;ZIZ)V

    .line 3506
    iput-object v10, v5, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    .line 3507
    iput-object v10, v5, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    .line 3508
    iput-boolean v11, v5, Landroid/app/ActivityThread$ActivityClientRecord;->hideForNow:Z

    .line 3509
    iput-object v10, v5, Landroid/app/ActivityThread$ActivityClientRecord;->nextIdle:Landroid/app/ActivityThread$ActivityClientRecord;

    .line 3511
    iget-object v7, p1, Landroid/app/ActivityThread$ActivityClientRecord;->pendingResults:Ljava/util/List;

    if-eqz v7, :cond_b

    .line 3512
    iget-object v7, v5, Landroid/app/ActivityThread$ActivityClientRecord;->pendingResults:Ljava/util/List;

    if-nez v7, :cond_d

    .line 3513
    iget-object v7, p1, Landroid/app/ActivityThread$ActivityClientRecord;->pendingResults:Ljava/util/List;

    iput-object v7, v5, Landroid/app/ActivityThread$ActivityClientRecord;->pendingResults:Ljava/util/List;

    .line 3518
    :cond_b
    :goto_2
    iget-object v7, p1, Landroid/app/ActivityThread$ActivityClientRecord;->pendingIntents:Ljava/util/List;

    if-eqz v7, :cond_c

    .line 3519
    iget-object v7, v5, Landroid/app/ActivityThread$ActivityClientRecord;->pendingIntents:Ljava/util/List;

    if-nez v7, :cond_e

    .line 3520
    iget-object v7, p1, Landroid/app/ActivityThread$ActivityClientRecord;->pendingIntents:Ljava/util/List;

    iput-object v7, v5, Landroid/app/ActivityThread$ActivityClientRecord;->pendingIntents:Ljava/util/List;

    .line 3525
    :cond_c
    :goto_3
    iget-boolean v7, p1, Landroid/app/ActivityThread$ActivityClientRecord;->startsNotResumed:Z

    iput-boolean v7, v5, Landroid/app/ActivityThread$ActivityClientRecord;->startsNotResumed:Z

    .line 3527
    invoke-direct {p0, v5, v3}, Landroid/app/ActivityThread;->handleLaunchActivity(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 3458
    .end local v0           #N:I
    .end local v3           #currentIntent:Landroid/content/Intent;
    .end local v4           #i:I
    .end local v5           #r:Landroid/app/ActivityThread$ActivityClientRecord;
    .end local v6           #token:Landroid/os/IBinder;
    :catchall_0
    move-exception v7

    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v7

    .line 3515
    .restart local v0       #N:I
    .restart local v3       #currentIntent:Landroid/content/Intent;
    .restart local v4       #i:I
    .restart local v5       #r:Landroid/app/ActivityThread$ActivityClientRecord;
    .restart local v6       #token:Landroid/os/IBinder;
    :cond_d
    iget-object v7, v5, Landroid/app/ActivityThread$ActivityClientRecord;->pendingResults:Ljava/util/List;

    iget-object v8, p1, Landroid/app/ActivityThread$ActivityClientRecord;->pendingResults:Ljava/util/List;

    invoke-interface {v7, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    .line 3522
    :cond_e
    iget-object v7, v5, Landroid/app/ActivityThread$ActivityClientRecord;->pendingIntents:Ljava/util/List;

    iget-object v8, p1, Landroid/app/ActivityThread$ActivityClientRecord;->pendingIntents:Ljava/util/List;

    invoke-interface {v7, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_3
.end method

.method private handleRequestThumbnail(Landroid/os/IBinder;)V
    .locals 7
    .parameter "token"

    .prologue
    .line 3531
    iget-object v4, p0, Landroid/app/ActivityThread;->mActivities:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 3532
    .local v2, r:Landroid/app/ActivityThread$ActivityClientRecord;
    invoke-direct {p0, v2}, Landroid/app/ActivityThread;->createThumbnailBitmap(Landroid/app/ActivityThread$ActivityClientRecord;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 3533
    .local v3, thumbnail:Landroid/graphics/Bitmap;
    const/4 v0, 0x0

    .line 3535
    .local v0, description:Ljava/lang/CharSequence;
    :try_start_0
    iget-object v4, v2, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->onCreateDescription()Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 3546
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    invoke-interface {v4, p1, v3, v0}, Landroid/app/IActivityManager;->reportThumbnail(Landroid/os/IBinder;Landroid/graphics/Bitmap;Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 3550
    :goto_0
    return-void

    .line 3536
    :catch_0
    move-exception v1

    .line 3537
    .local v1, e:Ljava/lang/Exception;
    iget-object v4, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v5, v2, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v4, v5, v1}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 3538
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to create description of activity "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 3548
    .end local v1           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v4

    goto :goto_0
.end method

.method private handleSendResult(Landroid/app/ActivityThread$ResultData;)V
    .locals 7
    .parameter "res"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 3166
    iget-object v5, p0, Landroid/app/ActivityThread;->mActivities:Ljava/util/HashMap;

    iget-object v6, p1, Landroid/app/ActivityThread$ResultData;->token:Landroid/os/IBinder;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 3168
    .local v1, r:Landroid/app/ActivityThread$ActivityClientRecord;
    if-eqz v1, :cond_3

    .line 3169
    iget-boolean v5, v1, Landroid/app/ActivityThread$ActivityClientRecord;->paused:Z

    if-nez v5, :cond_1

    move v2, v3

    .line 3170
    .local v2, resumed:Z
    :goto_0
    iget-object v5, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v5, v5, Landroid/app/Activity;->mFinished:Z

    if-nez v5, :cond_0

    iget-object v5, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-object v5, v5, Landroid/app/Activity;->mDecor:Landroid/view/View;

    if-eqz v5, :cond_0

    iget-boolean v5, v1, Landroid/app/ActivityThread$ActivityClientRecord;->hideForNow:Z

    if-eqz v5, :cond_0

    if-eqz v2, :cond_0

    .line 3175
    invoke-direct {p0, v1, v3}, Landroid/app/ActivityThread;->updateVisibility(Landroid/app/ActivityThread$ActivityClientRecord;Z)V

    .line 3177
    :cond_0
    if-eqz v2, :cond_2

    .line 3180
    :try_start_0
    iget-object v3, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    const/4 v5, 0x0

    iput-boolean v5, v3, Landroid/app/Activity;->mCalled:Z

    .line 3181
    iget-object v3, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    const/4 v5, 0x1

    iput-boolean v5, v3, Landroid/app/Activity;->mTemporaryPause:Z

    .line 3182
    iget-object v3, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v5, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v3, v5}, Landroid/app/Instrumentation;->callActivityOnPause(Landroid/app/Activity;)V

    .line 3183
    iget-object v3, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v3, v3, Landroid/app/Activity;->mCalled:Z

    if-nez v3, :cond_2

    .line 3184
    new-instance v3, Landroid/app/SuperNotCalledException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Activity "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " did not call through to super.onPause()"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Landroid/app/SuperNotCalledException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 3188
    :catch_0
    move-exception v0

    .line 3189
    .local v0, e:Landroid/app/SuperNotCalledException;
    throw v0

    .end local v0           #e:Landroid/app/SuperNotCalledException;
    .end local v2           #resumed:Z
    :cond_1
    move v2, v4

    .line 3169
    goto :goto_0

    .line 3190
    .restart local v2       #resumed:Z
    :catch_1
    move-exception v0

    .line 3191
    .local v0, e:Ljava/lang/Exception;
    iget-object v3, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v5, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v3, v5, v0}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 3192
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to pause activity "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 3199
    .end local v0           #e:Ljava/lang/Exception;
    :cond_2
    iget-object v3, p1, Landroid/app/ActivityThread$ResultData;->results:Ljava/util/List;

    invoke-direct {p0, v1, v3}, Landroid/app/ActivityThread;->deliverResults(Landroid/app/ActivityThread$ActivityClientRecord;Ljava/util/List;)V

    .line 3200
    if-eqz v2, :cond_3

    .line 3201
    iget-object v3, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->performResume()V

    .line 3202
    iget-object v3, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iput-boolean v4, v3, Landroid/app/Activity;->mTemporaryPause:Z

    .line 3205
    .end local v2           #resumed:Z
    :cond_3
    return-void
.end method

.method private handleServiceArgs(Landroid/app/ActivityThread$ServiceArgsData;)V
    .locals 7
    .parameter "data"

    .prologue
    .line 2490
    iget-object v3, p0, Landroid/app/ActivityThread;->mServices:Ljava/util/HashMap;

    iget-object v4, p1, Landroid/app/ActivityThread$ServiceArgsData;->token:Landroid/os/IBinder;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Service;

    .line 2491
    .local v2, s:Landroid/app/Service;
    if-eqz v2, :cond_1

    .line 2493
    :try_start_0
    iget-object v3, p1, Landroid/app/ActivityThread$ServiceArgsData;->args:Landroid/content/Intent;

    if-eqz v3, :cond_0

    .line 2494
    iget-object v3, p1, Landroid/app/ActivityThread$ServiceArgsData;->args:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/app/Service;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 2497
    :cond_0
    iget-boolean v3, p1, Landroid/app/ActivityThread$ServiceArgsData;->taskRemoved:Z

    if-nez v3, :cond_2

    .line 2498
    iget-object v3, p1, Landroid/app/ActivityThread$ServiceArgsData;->args:Landroid/content/Intent;

    iget v4, p1, Landroid/app/ActivityThread$ServiceArgsData;->flags:I

    iget v5, p1, Landroid/app/ActivityThread$ServiceArgsData;->startId:I

    invoke-virtual {v2, v3, v4, v5}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v1

    .line 2504
    .local v1, res:I
    :goto_0
    invoke-static {}, Landroid/app/QueuedWork;->waitToFinish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2507
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    iget-object v4, p1, Landroid/app/ActivityThread$ServiceArgsData;->token:Landroid/os/IBinder;

    const/4 v5, 0x1

    iget v6, p1, Landroid/app/ActivityThread$ServiceArgsData;->startId:I

    invoke-interface {v3, v4, v5, v6, v1}, Landroid/app/IActivityManager;->serviceDoneExecuting(Landroid/os/IBinder;III)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 2512
    :goto_1
    :try_start_2
    invoke-virtual {p0}, Landroid/app/ActivityThread;->ensureJitEnabled()V

    .line 2521
    .end local v1           #res:I
    :cond_1
    return-void

    .line 2500
    :cond_2
    iget-object v3, p1, Landroid/app/ActivityThread$ServiceArgsData;->args:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Landroid/app/Service;->onTaskRemoved(Landroid/content/Intent;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 2501
    const/16 v1, 0x3e8

    .restart local v1       #res:I
    goto :goto_0

    .line 2513
    .end local v1           #res:I
    :catch_0
    move-exception v0

    .line 2514
    .local v0, e:Ljava/lang/Exception;
    iget-object v3, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v3, v2, v0}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2515
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to start service "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " with "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Landroid/app/ActivityThread$ServiceArgsData;->args:Landroid/content/Intent;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 2509
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #res:I
    :catch_1
    move-exception v3

    goto :goto_1
.end method

.method private handleSetCoreSettings(Landroid/os/Bundle;)V
    .locals 2
    .parameter "coreSettings"

    .prologue
    .line 3124
    iget-object v1, p0, Landroid/app/ActivityThread;->mPackages:Ljava/util/HashMap;

    monitor-enter v1

    .line 3125
    :try_start_0
    iput-object p1, p0, Landroid/app/ActivityThread;->mCoreSettings:Landroid/os/Bundle;

    .line 3126
    monitor-exit v1

    .line 3127
    return-void

    .line 3126
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private handleSleeping(Landroid/os/IBinder;Z)V
    .locals 5
    .parameter "token"
    .parameter "sleeping"

    .prologue
    .line 3082
    iget-object v2, p0, Landroid/app/ActivityThread;->mActivities:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 3084
    .local v1, r:Landroid/app/ActivityThread$ActivityClientRecord;
    if-nez v1, :cond_1

    .line 3085
    const-string v2, "ActivityThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleSleeping: no activity for token "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3121
    :cond_0
    :goto_0
    return-void

    .line 3089
    :cond_1
    if-eqz p2, :cond_5

    .line 3090
    iget-boolean v2, v1, Landroid/app/ActivityThread$ActivityClientRecord;->stopped:Z

    if-nez v2, :cond_3

    invoke-virtual {v1}, Landroid/app/ActivityThread$ActivityClientRecord;->isPreHoneycomb()Z

    move-result v2

    if-nez v2, :cond_3

    .line 3093
    :try_start_0
    iget-object v2, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->performStop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 3102
    :cond_2
    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/app/ActivityThread$ActivityClientRecord;->stopped:Z

    .line 3106
    :cond_3
    invoke-virtual {v1}, Landroid/app/ActivityThread$ActivityClientRecord;->isPreHoneycomb()Z

    move-result v2

    if-nez v2, :cond_4

    .line 3107
    invoke-static {}, Landroid/app/QueuedWork;->waitToFinish()V

    .line 3112
    :cond_4
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    iget-object v3, v1, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    invoke-interface {v2, v3}, Landroid/app/IActivityManager;->activitySlept(Landroid/os/IBinder;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 3113
    :catch_0
    move-exception v2

    goto :goto_0

    .line 3094
    :catch_1
    move-exception v0

    .line 3095
    .local v0, e:Ljava/lang/Exception;
    iget-object v2, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v3, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v2, v3, v0}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 3096
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to stop activity "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 3116
    .end local v0           #e:Ljava/lang/Exception;
    :cond_5
    iget-boolean v2, v1, Landroid/app/ActivityThread$ActivityClientRecord;->stopped:Z

    if-eqz v2, :cond_0

    iget-object v2, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v2, v2, Landroid/app/Activity;->mVisibleFromServer:Z

    if-eqz v2, :cond_0

    .line 3117
    iget-object v2, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->performRestart()V

    .line 3118
    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/app/ActivityThread$ActivityClientRecord;->stopped:Z

    goto :goto_0
.end method

.method private handleStopActivity(Landroid/os/IBinder;ZI)V
    .locals 5
    .parameter "token"
    .parameter "show"
    .parameter "configChanges"

    .prologue
    .line 3014
    iget-object v2, p0, Landroid/app/ActivityThread;->mActivities:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 3017
    .local v1, r:Landroid/app/ActivityThread$ActivityClientRecord;
    if-nez v1, :cond_0

    .line 3018
    const-string v2, "ActivityThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleStopActivity: no activity for token "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3046
    :goto_0
    return-void

    .line 3022
    :cond_0
    iget-object v2, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget v3, v2, Landroid/app/Activity;->mConfigChangeFlags:I

    or-int/2addr v3, p3

    iput v3, v2, Landroid/app/Activity;->mConfigChangeFlags:I

    .line 3024
    new-instance v0, Landroid/app/ActivityThread$StopInfo;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Landroid/app/ActivityThread$StopInfo;-><init>(Landroid/app/ActivityThread$1;)V

    .line 3025
    .local v0, info:Landroid/app/ActivityThread$StopInfo;
    const/4 v2, 0x1

    invoke-direct {p0, v1, v0, p2, v2}, Landroid/app/ActivityThread;->performStopActivityInner(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/app/ActivityThread$StopInfo;ZZ)V

    .line 3031
    invoke-direct {p0, v1, p2}, Landroid/app/ActivityThread;->updateVisibility(Landroid/app/ActivityThread$ActivityClientRecord;Z)V

    .line 3034
    invoke-virtual {v1}, Landroid/app/ActivityThread$ActivityClientRecord;->isPreHoneycomb()Z

    move-result v2

    if-nez v2, :cond_1

    .line 3035
    invoke-static {}, Landroid/app/QueuedWork;->waitToFinish()V

    .line 3043
    :cond_1
    iput-object v1, v0, Landroid/app/ActivityThread$StopInfo;->activity:Landroid/app/ActivityThread$ActivityClientRecord;

    .line 3044
    iget-object v2, v1, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    iput-object v2, v0, Landroid/app/ActivityThread$StopInfo;->state:Landroid/os/Bundle;

    .line 3045
    iget-object v2, p0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    invoke-virtual {v2, v0}, Landroid/app/ActivityThread$H;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private handleStopService(Landroid/os/IBinder;)V
    .locals 8
    .parameter "token"

    .prologue
    .line 2524
    iget-object v4, p0, Landroid/app/ActivityThread;->mServices:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Service;

    .line 2525
    .local v2, s:Landroid/app/Service;
    if-eqz v2, :cond_1

    .line 2528
    :try_start_0
    invoke-virtual {v2}, Landroid/app/Service;->onDestroy()V

    .line 2529
    invoke-virtual {v2}, Landroid/app/Service;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    .line 2530
    .local v0, context:Landroid/content/Context;
    instance-of v4, v0, Landroid/app/ContextImpl;

    if-eqz v4, :cond_0

    .line 2531
    invoke-virtual {v2}, Landroid/app/Service;->getClassName()Ljava/lang/String;

    move-result-object v3

    .line 2532
    .local v3, who:Ljava/lang/String;
    check-cast v0, Landroid/app/ContextImpl;

    .end local v0           #context:Landroid/content/Context;
    const-string v4, "Service"

    invoke-virtual {v0, v3, v4}, Landroid/app/ContextImpl;->scheduleFinalCleanup(Ljava/lang/String;Ljava/lang/String;)V

    .line 2535
    .end local v3           #who:Ljava/lang/String;
    :cond_0
    invoke-static {}, Landroid/app/QueuedWork;->waitToFinish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2538
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface {v4, p1, v5, v6, v7}, Landroid/app/IActivityManager;->serviceDoneExecuting(Landroid/os/IBinder;III)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 2552
    :cond_1
    :goto_0
    return-void

    .line 2543
    :catch_0
    move-exception v1

    .line 2544
    .local v1, e:Ljava/lang/Exception;
    iget-object v4, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v4, v2, v1}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 2545
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to stop service "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 2540
    .end local v1           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v4

    goto :goto_0
.end method

.method private handleUnbindService(Landroid/app/ActivityThread$BindServiceData;)V
    .locals 8
    .parameter "data"

    .prologue
    .line 2419
    iget-object v3, p0, Landroid/app/ActivityThread;->mServices:Ljava/util/HashMap;

    iget-object v4, p1, Landroid/app/ActivityThread$BindServiceData;->token:Landroid/os/IBinder;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Service;

    .line 2420
    .local v2, s:Landroid/app/Service;
    if-eqz v2, :cond_0

    .line 2422
    :try_start_0
    iget-object v3, p1, Landroid/app/ActivityThread$BindServiceData;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/app/Service;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 2423
    iget-object v3, p1, Landroid/app/ActivityThread$BindServiceData;->intent:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    .line 2425
    .local v0, doRebind:Z
    if-eqz v0, :cond_1

    .line 2426
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    iget-object v4, p1, Landroid/app/ActivityThread$BindServiceData;->token:Landroid/os/IBinder;

    iget-object v5, p1, Landroid/app/ActivityThread$BindServiceData;->intent:Landroid/content/Intent;

    invoke-interface {v3, v4, v5, v0}, Landroid/app/IActivityManager;->unbindFinished(Landroid/os/IBinder;Landroid/content/Intent;Z)V

    .line 2442
    .end local v0           #doRebind:Z
    :cond_0
    :goto_0
    return-void

    .line 2429
    .restart local v0       #doRebind:Z
    :cond_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    iget-object v4, p1, Landroid/app/ActivityThread$BindServiceData;->token:Landroid/os/IBinder;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface {v3, v4, v5, v6, v7}, Landroid/app/IActivityManager;->serviceDoneExecuting(Landroid/os/IBinder;III)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 2432
    :catch_0
    move-exception v3

    goto :goto_0

    .line 2434
    .end local v0           #doRebind:Z
    :catch_1
    move-exception v1

    .line 2435
    .local v1, e:Ljava/lang/Exception;
    iget-object v3, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v3, v2, v1}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2436
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to unbind to service "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " with "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Landroid/app/ActivityThread$BindServiceData;->intent:Landroid/content/Intent;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method private handleUpdatePackageCompatibilityInfo(Landroid/app/ActivityThread$UpdateCompatibilityData;)V
    .locals 3
    .parameter "data"

    .prologue
    .line 3130
    iget-object v1, p1, Landroid/app/ActivityThread$UpdateCompatibilityData;->pkg:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/app/ActivityThread;->peekPackageInfo(Ljava/lang/String;Z)Landroid/app/LoadedApk;

    move-result-object v0

    .line 3131
    .local v0, apk:Landroid/app/LoadedApk;
    if-eqz v0, :cond_0

    .line 3132
    iget-object v1, v0, Landroid/app/LoadedApk;->mCompatibilityInfo:Landroid/view/CompatibilityInfoHolder;

    iget-object v2, p1, Landroid/app/ActivityThread$UpdateCompatibilityData;->info:Landroid/content/res/CompatibilityInfo;

    invoke-virtual {v1, v2}, Landroid/view/CompatibilityInfoHolder;->set(Landroid/content/res/CompatibilityInfo;)V

    .line 3134
    :cond_0
    iget-object v1, p1, Landroid/app/ActivityThread$UpdateCompatibilityData;->pkg:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Landroid/app/ActivityThread;->peekPackageInfo(Ljava/lang/String;Z)Landroid/app/LoadedApk;

    move-result-object v0

    .line 3135
    if-eqz v0, :cond_1

    .line 3136
    iget-object v1, v0, Landroid/app/LoadedApk;->mCompatibilityInfo:Landroid/view/CompatibilityInfoHolder;

    iget-object v2, p1, Landroid/app/ActivityThread$UpdateCompatibilityData;->info:Landroid/content/res/CompatibilityInfo;

    invoke-virtual {v1, v2}, Landroid/view/CompatibilityInfoHolder;->set(Landroid/content/res/CompatibilityInfo;)V

    .line 3138
    :cond_1
    iget-object v1, p0, Landroid/app/ActivityThread;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v2, p1, Landroid/app/ActivityThread$UpdateCompatibilityData;->info:Landroid/content/res/CompatibilityInfo;

    invoke-virtual {p0, v1, v2}, Landroid/app/ActivityThread;->handleConfigurationChanged(Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)V

    .line 3139
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v1

    iget-object v2, p0, Landroid/app/ActivityThread;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v1, v2}, Landroid/view/WindowManagerImpl;->reportNewConfiguration(Landroid/content/res/Configuration;)V

    .line 3140
    return-void
.end method

.method private handleWindowVisibility(Landroid/os/IBinder;Z)V
    .locals 4
    .parameter "token"
    .parameter "show"

    .prologue
    const/4 v2, 0x0

    .line 3057
    iget-object v1, p0, Landroid/app/ActivityThread;->mActivities:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 3059
    .local v0, r:Landroid/app/ActivityThread$ActivityClientRecord;
    if-nez v0, :cond_1

    .line 3060
    const-string v1, "ActivityThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleWindowVisibility: no activity for token "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3079
    :cond_0
    :goto_0
    return-void

    .line 3064
    :cond_1
    if-nez p2, :cond_3

    iget-boolean v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->stopped:Z

    if-nez v1, :cond_3

    .line 3065
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p2, v2}, Landroid/app/ActivityThread;->performStopActivityInner(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/app/ActivityThread$StopInfo;ZZ)V

    .line 3074
    :cond_2
    :goto_1
    iget-object v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-object v1, v1, Landroid/app/Activity;->mDecor:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 3077
    invoke-direct {p0, v0, p2}, Landroid/app/ActivityThread;->updateVisibility(Landroid/app/ActivityThread$ActivityClientRecord;Z)V

    goto :goto_0

    .line 3066
    :cond_3
    if-eqz p2, :cond_2

    iget-boolean v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->stopped:Z

    if-eqz v1, :cond_2

    .line 3069
    invoke-virtual {p0}, Landroid/app/ActivityThread;->unscheduleGcIdler()V

    .line 3071
    iget-object v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->performRestart()V

    .line 3072
    iput-boolean v2, v0, Landroid/app/ActivityThread$ActivityClientRecord;->stopped:Z

    goto :goto_1
.end method

.method private final incProviderRefLocked(Landroid/app/ActivityThread$ProviderRefCount;Z)V
    .locals 5
    .parameter "prc"
    .parameter "stable"

    .prologue
    const/16 v4, 0x83

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 4293
    if-eqz p2, :cond_2

    .line 4294
    iget v1, p1, Landroid/app/ActivityThread$ProviderRefCount;->stableCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p1, Landroid/app/ActivityThread$ProviderRefCount;->stableCount:I

    .line 4295
    iget v1, p1, Landroid/app/ActivityThread$ProviderRefCount;->stableCount:I

    if-ne v1, v2, :cond_0

    .line 4298
    iget-boolean v1, p1, Landroid/app/ActivityThread$ProviderRefCount;->removePending:Z

    if-eqz v1, :cond_1

    .line 4302
    const/4 v0, -0x1

    .line 4308
    .local v0, unstableDelta:I
    iput-boolean v3, p1, Landroid/app/ActivityThread$ProviderRefCount;->removePending:Z

    .line 4309
    iget-object v1, p0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    invoke-virtual {v1, v4, p1}, Landroid/app/ActivityThread$H;->removeMessages(ILjava/lang/Object;)V

    .line 4319
    :goto_0
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, p1, Landroid/app/ActivityThread$ProviderRefCount;->holder:Landroid/app/IActivityManager$ContentProviderHolder;

    iget-object v2, v2, Landroid/app/IActivityManager$ContentProviderHolder;->connection:Landroid/os/IBinder;

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3, v0}, Landroid/app/IActivityManager;->refContentProvider(Landroid/os/IBinder;II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 4356
    .end local v0           #unstableDelta:I
    :cond_0
    :goto_1
    return-void

    .line 4311
    :cond_1
    const/4 v0, 0x0

    .restart local v0       #unstableDelta:I
    goto :goto_0

    .line 4326
    .end local v0           #unstableDelta:I
    :cond_2
    iget v1, p1, Landroid/app/ActivityThread$ProviderRefCount;->unstableCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p1, Landroid/app/ActivityThread$ProviderRefCount;->unstableCount:I

    .line 4327
    iget v1, p1, Landroid/app/ActivityThread$ProviderRefCount;->unstableCount:I

    if-ne v1, v2, :cond_0

    .line 4329
    iget-boolean v1, p1, Landroid/app/ActivityThread$ProviderRefCount;->removePending:Z

    if-eqz v1, :cond_3

    .line 4338
    iput-boolean v3, p1, Landroid/app/ActivityThread$ProviderRefCount;->removePending:Z

    .line 4339
    iget-object v1, p0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    invoke-virtual {v1, v4, p1}, Landroid/app/ActivityThread$H;->removeMessages(ILjava/lang/Object;)V

    goto :goto_1

    .line 4348
    :cond_3
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, p1, Landroid/app/ActivityThread$ProviderRefCount;->holder:Landroid/app/IActivityManager$ContentProviderHolder;

    iget-object v2, v2, Landroid/app/IActivityManager$ContentProviderHolder;->connection:Landroid/os/IBinder;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v3, v4}, Landroid/app/IActivityManager;->refContentProvider(Landroid/os/IBinder;II)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 4350
    :catch_0
    move-exception v1

    goto :goto_1

    .line 4321
    .restart local v0       #unstableDelta:I
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method private installContentProviders(Landroid/content/Context;Ljava/util/List;)V
    .locals 11
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ProviderInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, providers:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ProviderInfo;>;"
    const/4 v5, 0x1

    .line 4237
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 4240
    .local v10, results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/IActivityManager$ContentProviderHolder;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ProviderInfo;

    .line 4241
    .local v3, cpi:Landroid/content/pm/ProviderInfo;
    new-instance v7, Ljava/lang/StringBuilder;

    const/16 v0, 0x80

    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 4242
    .local v7, buf:Ljava/lang/StringBuilder;
    const-string v0, "Pub "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4243
    iget-object v0, v3, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4244
    const-string v0, ": "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4245
    iget-object v0, v3, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4246
    const-string v0, "ActivityThread"

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4247
    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v6, v5

    invoke-direct/range {v0 .. v6}, Landroid/app/ActivityThread;->installProvider(Landroid/content/Context;Landroid/app/IActivityManager$ContentProviderHolder;Landroid/content/pm/ProviderInfo;ZZZ)Landroid/app/IActivityManager$ContentProviderHolder;

    move-result-object v8

    .line 4249
    .local v8, cph:Landroid/app/IActivityManager$ContentProviderHolder;
    if-eqz v8, :cond_0

    .line 4250
    iput-boolean v5, v8, Landroid/app/IActivityManager$ContentProviderHolder;->noReleaseNeeded:Z

    .line 4251
    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4256
    .end local v3           #cpi:Landroid/content/pm/ProviderInfo;
    .end local v7           #buf:Ljava/lang/StringBuilder;
    .end local v8           #cph:Landroid/app/IActivityManager$ContentProviderHolder;
    :cond_1
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v1

    invoke-interface {v0, v1, v10}, Landroid/app/IActivityManager;->publishContentProviders(Landroid/app/IApplicationThread;Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4260
    :goto_1
    return-void

    .line 4258
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private installProvider(Landroid/content/Context;Landroid/app/IActivityManager$ContentProviderHolder;Landroid/content/pm/ProviderInfo;ZZZ)Landroid/app/IActivityManager$ContentProviderHolder;
    .locals 18
    .parameter "context"
    .parameter "holder"
    .parameter "info"
    .parameter "noisy"
    .parameter "noReleaseNeeded"
    .parameter "stable"

    .prologue
    .line 4574
    const/4 v10, 0x0

    .line 4576
    .local v10, localProvider:Landroid/content/ContentProvider;
    if-eqz p2, :cond_0

    move-object/from16 v0, p2

    iget-object v15, v0, Landroid/app/IActivityManager$ContentProviderHolder;->provider:Landroid/content/IContentProvider;

    if-nez v15, :cond_7

    .line 4577
    :cond_0
    if-eqz p4, :cond_1

    .line 4578
    const-string v15, "ActivityThread"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Loading provider "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ": "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4581
    :cond_1
    const/4 v3, 0x0

    .line 4582
    .local v3, c:Landroid/content/Context;
    move-object/from16 v0, p3

    iget-object v2, v0, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 4583
    .local v2, ai:Landroid/content/pm/ApplicationInfo;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v15

    iget-object v0, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 4584
    move-object/from16 v3, p1

    .line 4596
    :goto_0
    if-nez v3, :cond_4

    .line 4597
    const-string v15, "ActivityThread"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Unable to get context for package "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget-object v0, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " while loading content provider "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4601
    const/4 v14, 0x0

    .line 4691
    .end local v2           #ai:Landroid/content/pm/ApplicationInfo;
    .end local v3           #c:Landroid/content/Context;
    :goto_1
    return-object v14

    .line 4585
    .restart local v2       #ai:Landroid/content/pm/ApplicationInfo;
    .restart local v3       #c:Landroid/content/Context;
    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    if-eqz v15, :cond_3

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    invoke-virtual {v15}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v15

    iget-object v0, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 4587
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    goto :goto_0

    .line 4590
    :cond_3
    :try_start_0
    iget-object v15, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/16 v16, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v3

    goto :goto_0

    .line 4604
    :cond_4
    :try_start_1
    invoke-virtual {v3}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    .line 4605
    .local v4, cl:Ljava/lang/ClassLoader;
    move-object/from16 v0, p3

    iget-object v15, v0, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v15}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v15

    move-object v0, v15

    check-cast v0, Landroid/content/ContentProvider;

    move-object v10, v0

    .line 4607
    invoke-virtual {v10}, Landroid/content/ContentProvider;->getIContentProvider()Landroid/content/IContentProvider;

    move-result-object v13

    .line 4608
    .local v13, provider:Landroid/content/IContentProvider;
    if-nez v13, :cond_5

    .line 4609
    const-string v15, "ActivityThread"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Failed to instantiate class "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " from sourceDir "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4612
    const/4 v14, 0x0

    goto :goto_1

    .line 4617
    :cond_5
    move-object/from16 v0, p3

    invoke-virtual {v10, v3, v0}, Landroid/content/ContentProvider;->attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 4634
    .end local v2           #ai:Landroid/content/pm/ApplicationInfo;
    .end local v3           #c:Landroid/content/Context;
    .end local v4           #cl:Ljava/lang/ClassLoader;
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/ActivityThread;->mProviderMap:Ljava/util/HashMap;

    move-object/from16 v16, v0

    monitor-enter v16

    .line 4637
    :try_start_2
    invoke-interface {v13}, Landroid/content/IContentProvider;->asBinder()Landroid/os/IBinder;

    move-result-object v9

    .line 4638
    .local v9, jBinder:Landroid/os/IBinder;
    if-eqz v10, :cond_9

    .line 4639
    new-instance v6, Landroid/content/ComponentName;

    move-object/from16 v0, p3

    iget-object v15, v0, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-direct {v6, v15, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 4640
    .local v6, cname:Landroid/content/ComponentName;
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/app/ActivityThread;->mLocalProvidersByName:Ljava/util/HashMap;

    invoke-virtual {v15, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/ActivityThread$ProviderClientRecord;

    .line 4641
    .local v11, pr:Landroid/app/ActivityThread$ProviderClientRecord;
    if-eqz v11, :cond_8

    .line 4646
    iget-object v13, v11, Landroid/app/ActivityThread$ProviderClientRecord;->mProvider:Landroid/content/IContentProvider;

    .line 4655
    :goto_3
    iget-object v14, v11, Landroid/app/ActivityThread$ProviderClientRecord;->mHolder:Landroid/app/IActivityManager$ContentProviderHolder;

    .line 4689
    .end local v6           #cname:Landroid/content/ComponentName;
    .end local v11           #pr:Landroid/app/ActivityThread$ProviderClientRecord;
    .local v14, retHolder:Landroid/app/IActivityManager$ContentProviderHolder;
    :goto_4
    monitor-exit v16

    goto/16 :goto_1

    .end local v9           #jBinder:Landroid/os/IBinder;
    .end local v14           #retHolder:Landroid/app/IActivityManager$ContentProviderHolder;
    :catchall_0
    move-exception v15

    :goto_5
    monitor-exit v16
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v15

    .line 4618
    .end local v13           #provider:Landroid/content/IContentProvider;
    .restart local v2       #ai:Landroid/content/pm/ApplicationInfo;
    .restart local v3       #c:Landroid/content/Context;
    :catch_0
    move-exception v7

    .line 4619
    .local v7, e:Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v7}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v15

    if-nez v15, :cond_6

    .line 4620
    new-instance v15, Ljava/lang/RuntimeException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Unable to get provider "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ": "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v15, v0, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v15

    .line 4624
    :cond_6
    const/4 v14, 0x0

    goto/16 :goto_1

    .line 4627
    .end local v2           #ai:Landroid/content/pm/ApplicationInfo;
    .end local v3           #c:Landroid/content/Context;
    .end local v7           #e:Ljava/lang/Exception;
    :cond_7
    move-object/from16 v0, p2

    iget-object v13, v0, Landroid/app/IActivityManager$ContentProviderHolder;->provider:Landroid/content/IContentProvider;

    .restart local v13       #provider:Landroid/content/IContentProvider;
    goto :goto_2

    .line 4648
    .restart local v6       #cname:Landroid/content/ComponentName;
    .restart local v9       #jBinder:Landroid/os/IBinder;
    .restart local v11       #pr:Landroid/app/ActivityThread$ProviderClientRecord;
    :cond_8
    :try_start_3
    new-instance v8, Landroid/app/IActivityManager$ContentProviderHolder;

    move-object/from16 v0, p3

    invoke-direct {v8, v0}, Landroid/app/IActivityManager$ContentProviderHolder;-><init>(Landroid/content/pm/ProviderInfo;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 4649
    .end local p2
    .local v8, holder:Landroid/app/IActivityManager$ContentProviderHolder;
    :try_start_4
    iput-object v13, v8, Landroid/app/IActivityManager$ContentProviderHolder;->provider:Landroid/content/IContentProvider;

    .line 4650
    const/4 v15, 0x1

    iput-boolean v15, v8, Landroid/app/IActivityManager$ContentProviderHolder;->noReleaseNeeded:Z

    .line 4651
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v10, v8}, Landroid/app/ActivityThread;->installProviderAuthoritiesLocked(Landroid/content/IContentProvider;Landroid/content/ContentProvider;Landroid/app/IActivityManager$ContentProviderHolder;)Landroid/app/ActivityThread$ProviderClientRecord;

    move-result-object v11

    .line 4652
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/app/ActivityThread;->mLocalProviders:Ljava/util/HashMap;

    invoke-virtual {v15, v9, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4653
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/app/ActivityThread;->mLocalProvidersByName:Ljava/util/HashMap;

    invoke-virtual {v15, v6, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object/from16 p2, v8

    .end local v8           #holder:Landroid/app/IActivityManager$ContentProviderHolder;
    .restart local p2
    goto :goto_3

    .line 4657
    .end local v6           #cname:Landroid/content/ComponentName;
    .end local v11           #pr:Landroid/app/ActivityThread$ProviderClientRecord;
    :cond_9
    :try_start_5
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/app/ActivityThread;->mProviderRefCountMap:Ljava/util/HashMap;

    invoke-virtual {v15, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/app/ActivityThread$ProviderRefCount;

    .line 4658
    .local v12, prc:Landroid/app/ActivityThread$ProviderRefCount;
    if-eqz v12, :cond_b

    .line 4666
    if-nez p5, :cond_a

    .line 4667
    move-object/from16 v0, p0

    move/from16 v1, p6

    invoke-direct {v0, v12, v1}, Landroid/app/ActivityThread;->incProviderRefLocked(Landroid/app/ActivityThread$ProviderRefCount;Z)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 4669
    :try_start_6
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v15

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/app/IActivityManager$ContentProviderHolder;->connection:Landroid/os/IBinder;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move/from16 v1, p6

    invoke-interface {v15, v0, v1}, Landroid/app/IActivityManager;->removeContentProvider(Landroid/os/IBinder;Z)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1

    .line 4687
    :cond_a
    :goto_6
    :try_start_7
    iget-object v14, v12, Landroid/app/ActivityThread$ProviderRefCount;->holder:Landroid/app/IActivityManager$ContentProviderHolder;

    .restart local v14       #retHolder:Landroid/app/IActivityManager$ContentProviderHolder;
    goto/16 :goto_4

    .line 4676
    .end local v14           #retHolder:Landroid/app/IActivityManager$ContentProviderHolder;
    :cond_b
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v13, v10, v1}, Landroid/app/ActivityThread;->installProviderAuthoritiesLocked(Landroid/content/IContentProvider;Landroid/content/ContentProvider;Landroid/app/IActivityManager$ContentProviderHolder;)Landroid/app/ActivityThread$ProviderClientRecord;

    move-result-object v5

    .line 4678
    .local v5, client:Landroid/app/ActivityThread$ProviderClientRecord;
    if-eqz p5, :cond_c

    .line 4679
    new-instance v12, Landroid/app/ActivityThread$ProviderRefCount;

    .end local v12           #prc:Landroid/app/ActivityThread$ProviderRefCount;
    const/16 v15, 0x3e8

    const/16 v17, 0x3e8

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-direct {v12, v0, v5, v15, v1}, Landroid/app/ActivityThread$ProviderRefCount;-><init>(Landroid/app/IActivityManager$ContentProviderHolder;Landroid/app/ActivityThread$ProviderClientRecord;II)V

    .line 4685
    .restart local v12       #prc:Landroid/app/ActivityThread$ProviderRefCount;
    :goto_7
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/app/ActivityThread;->mProviderRefCountMap:Ljava/util/HashMap;

    invoke-virtual {v15, v9, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 4681
    :cond_c
    if-eqz p6, :cond_d

    new-instance v12, Landroid/app/ActivityThread$ProviderRefCount;

    .end local v12           #prc:Landroid/app/ActivityThread$ProviderRefCount;
    const/4 v15, 0x1

    const/16 v17, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-direct {v12, v0, v5, v15, v1}, Landroid/app/ActivityThread$ProviderRefCount;-><init>(Landroid/app/IActivityManager$ContentProviderHolder;Landroid/app/ActivityThread$ProviderClientRecord;II)V

    .restart local v12       #prc:Landroid/app/ActivityThread$ProviderRefCount;
    :goto_8
    goto :goto_7

    :cond_d
    new-instance v12, Landroid/app/ActivityThread$ProviderRefCount;

    .end local v12           #prc:Landroid/app/ActivityThread$ProviderRefCount;
    const/4 v15, 0x0

    const/16 v17, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-direct {v12, v0, v5, v15, v1}, Landroid/app/ActivityThread$ProviderRefCount;-><init>(Landroid/app/IActivityManager$ContentProviderHolder;Landroid/app/ActivityThread$ProviderClientRecord;II)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_8

    .line 4689
    .end local v5           #client:Landroid/app/ActivityThread$ProviderClientRecord;
    .end local p2
    .restart local v6       #cname:Landroid/content/ComponentName;
    .restart local v8       #holder:Landroid/app/IActivityManager$ContentProviderHolder;
    .restart local v11       #pr:Landroid/app/ActivityThread$ProviderClientRecord;
    :catchall_1
    move-exception v15

    move-object/from16 p2, v8

    .end local v8           #holder:Landroid/app/IActivityManager$ContentProviderHolder;
    .restart local p2
    goto/16 :goto_5

    .line 4671
    .end local v6           #cname:Landroid/content/ComponentName;
    .end local v11           #pr:Landroid/app/ActivityThread$ProviderClientRecord;
    .restart local v12       #prc:Landroid/app/ActivityThread$ProviderRefCount;
    :catch_1
    move-exception v15

    goto :goto_6

    .line 4592
    .end local v9           #jBinder:Landroid/os/IBinder;
    .end local v12           #prc:Landroid/app/ActivityThread$ProviderRefCount;
    .end local v13           #provider:Landroid/content/IContentProvider;
    .restart local v2       #ai:Landroid/content/pm/ApplicationInfo;
    .restart local v3       #c:Landroid/content/Context;
    :catch_2
    move-exception v15

    goto/16 :goto_0
.end method

.method private installProviderAuthoritiesLocked(Landroid/content/IContentProvider;Landroid/content/ContentProvider;Landroid/app/IActivityManager$ContentProviderHolder;)Landroid/app/ActivityThread$ProviderClientRecord;
    .locals 8
    .parameter "provider"
    .parameter "localProvider"
    .parameter "holder"

    .prologue
    .line 4542
    sget-object v1, Landroid/app/ActivityThread;->PATTERN_SEMICOLON:Ljava/util/regex/Pattern;

    iget-object v3, p3, Landroid/app/IActivityManager$ContentProviderHolder;->info:Landroid/content/pm/ProviderInfo;

    iget-object v3, v3, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v2

    .line 4543
    .local v2, names:[Ljava/lang/String;
    new-instance v0, Landroid/app/ActivityThread$ProviderClientRecord;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/app/ActivityThread$ProviderClientRecord;-><init>(Landroid/app/ActivityThread;[Ljava/lang/String;Landroid/content/IContentProvider;Landroid/content/ContentProvider;Landroid/app/IActivityManager$ContentProviderHolder;)V

    .line 4545
    .local v0, pcr:Landroid/app/ActivityThread$ProviderClientRecord;
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    array-length v1, v2

    if-ge v7, v1, :cond_1

    .line 4546
    iget-object v1, p0, Landroid/app/ActivityThread;->mProviderMap:Ljava/util/HashMap;

    aget-object v3, v2, v7

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityThread$ProviderClientRecord;

    .line 4547
    .local v6, existing:Landroid/app/ActivityThread$ProviderClientRecord;
    if-eqz v6, :cond_0

    .line 4548
    const-string v1, "ActivityThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Content provider "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/app/ActivityThread$ProviderClientRecord;->mHolder:Landroid/app/IActivityManager$ContentProviderHolder;

    iget-object v4, v4, Landroid/app/IActivityManager$ContentProviderHolder;->info:Landroid/content/pm/ProviderInfo;

    iget-object v4, v4, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " already published as "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v2, v7

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4545
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 4551
    :cond_0
    iget-object v1, p0, Landroid/app/ActivityThread;->mProviderMap:Ljava/util/HashMap;

    aget-object v3, v2, v7

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 4554
    .end local v6           #existing:Landroid/app/ActivityThread$ProviderClientRecord;
    :cond_1
    return-object v0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 3
    .parameter "args"

    .prologue
    const/4 v2, 0x0

    .line 4778
    invoke-static {}, Lcom/android/internal/os/SamplingProfilerIntegration;->start()V

    .line 4783
    invoke-static {v2}, Ldalvik/system/CloseGuard;->setEnabled(Z)V

    .line 4785
    const-string v1, "<pre-initialized>"

    invoke-static {v1}, Landroid/os/Process;->setArgV0(Ljava/lang/String;)V

    .line 4787
    invoke-static {}, Landroid/os/Looper;->prepareMainLooper()V

    .line 4788
    sget-object v1, Landroid/app/ActivityThread;->sMainThreadHandler:Landroid/os/Handler;

    if-nez v1, :cond_0

    .line 4789
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    sput-object v1, Landroid/app/ActivityThread;->sMainThreadHandler:Landroid/os/Handler;

    .line 4792
    :cond_0
    new-instance v0, Landroid/app/ActivityThread;

    invoke-direct {v0}, Landroid/app/ActivityThread;-><init>()V

    .line 4793
    .local v0, thread:Landroid/app/ActivityThread;
    invoke-direct {v0, v2}, Landroid/app/ActivityThread;->attach(Z)V

    .line 4795
    invoke-static {}, Landroid/os/AsyncTask;->init()V

    .line 4802
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 4804
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Main thread loop unexpectedly exited"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static performConfigurationChanged(Landroid/content/ComponentCallbacks2;Landroid/content/res/Configuration;)V
    .locals 6
    .parameter "cb"
    .parameter "config"

    .prologue
    const/4 v4, 0x0

    .line 3607
    instance-of v3, p0, Landroid/app/Activity;

    if-eqz v3, :cond_3

    move-object v3, p0

    check-cast v3, Landroid/app/Activity;

    move-object v0, v3

    .line 3608
    .local v0, activity:Landroid/app/Activity;
    :goto_0
    if-eqz v0, :cond_0

    .line 3609
    iput-boolean v4, v0, Landroid/app/Activity;->mCalled:Z

    .line 3612
    :cond_0
    const/4 v2, 0x0

    .line 3613
    .local v2, shouldChangeConfig:Z
    if-eqz v0, :cond_1

    iget-object v3, v0, Landroid/app/Activity;->mCurrentConfig:Landroid/content/res/Configuration;

    if-nez v3, :cond_4

    .line 3614
    :cond_1
    const/4 v2, 0x1

    .line 3633
    :cond_2
    :goto_1
    if-eqz v2, :cond_6

    .line 3634
    invoke-interface {p0, p1}, Landroid/content/ComponentCallbacks2;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 3636
    if-eqz v0, :cond_6

    .line 3637
    iget-boolean v3, v0, Landroid/app/Activity;->mCalled:Z

    if-nez v3, :cond_5

    .line 3638
    new-instance v3, Landroid/app/SuperNotCalledException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Activity "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " did not call through to super.onConfigurationChanged()"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 3607
    .end local v0           #activity:Landroid/app/Activity;
    .end local v2           #shouldChangeConfig:Z
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 3620
    .restart local v0       #activity:Landroid/app/Activity;
    .restart local v2       #shouldChangeConfig:Z
    :cond_4
    iget-object v3, v0, Landroid/app/Activity;->mCurrentConfig:Landroid/content/res/Configuration;

    invoke-virtual {v3, p1}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v1

    .line 3621
    .local v1, diff:I
    if-eqz v1, :cond_2

    .line 3625
    iget-object v3, v0, Landroid/app/Activity;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v3}, Landroid/content/pm/ActivityInfo;->getRealConfigChanged()I

    move-result v3

    xor-int/lit8 v3, v3, -0x1

    and-int/2addr v3, v1

    if-nez v3, :cond_2

    .line 3626
    const/4 v2, 0x1

    goto :goto_1

    .line 3642
    .end local v1           #diff:I
    :cond_5
    iput v4, v0, Landroid/app/Activity;->mConfigChangeFlags:I

    .line 3643
    new-instance v3, Landroid/content/res/Configuration;

    invoke-direct {v3, p1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v3, v0, Landroid/app/Activity;->mCurrentConfig:Landroid/content/res/Configuration;

    .line 3646
    :cond_6
    return-void
.end method

.method private performDestroyActivity(Landroid/os/IBinder;ZIZ)Landroid/app/ActivityThread$ActivityClientRecord;
    .locals 7
    .parameter "token"
    .parameter "finishing"
    .parameter "configChanges"
    .parameter "getNonConfigInstance"

    .prologue
    const/4 v6, 0x1

    .line 3213
    iget-object v3, p0, Landroid/app/ActivityThread;->mActivities:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 3214
    .local v2, r:Landroid/app/ActivityThread$ActivityClientRecord;
    const/4 v0, 0x0

    .line 3216
    .local v0, activityClass:Ljava/lang/Class;
    if-eqz v2, :cond_7

    .line 3217
    iget-object v3, v2, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 3218
    iget-object v3, v2, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget v4, v3, Landroid/app/Activity;->mConfigChangeFlags:I

    or-int/2addr v4, p3

    iput v4, v3, Landroid/app/Activity;->mConfigChangeFlags:I

    .line 3219
    if-eqz p2, :cond_0

    .line 3220
    iget-object v3, v2, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iput-boolean v6, v3, Landroid/app/Activity;->mFinished:Z

    .line 3222
    :cond_0
    iget-boolean v3, v2, Landroid/app/ActivityThread$ActivityClientRecord;->paused:Z

    if-nez v3, :cond_2

    .line 3224
    :try_start_0
    iget-object v3, v2, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    const/4 v4, 0x0

    iput-boolean v4, v3, Landroid/app/Activity;->mCalled:Z

    .line 3225
    iget-object v3, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v4, v2, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v3, v4}, Landroid/app/Instrumentation;->callActivityOnPause(Landroid/app/Activity;)V

    .line 3226
    const/16 v3, 0x7545

    iget-object v4, v2, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 3228
    iget-object v3, v2, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v3, v3, Landroid/app/Activity;->mCalled:Z

    if-nez v3, :cond_1

    .line 3229
    new-instance v3, Landroid/app/SuperNotCalledException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Activity "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    invoke-static {v5}, Landroid/app/ActivityThread;->safeToComponentShortString(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " did not call through to super.onPause()"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Landroid/app/SuperNotCalledException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 3233
    :catch_0
    move-exception v1

    .line 3234
    .local v1, e:Landroid/app/SuperNotCalledException;
    throw v1

    .line 3235
    .end local v1           #e:Landroid/app/SuperNotCalledException;
    :catch_1
    move-exception v1

    .line 3236
    .local v1, e:Ljava/lang/Exception;
    iget-object v3, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v4, v2, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v3, v4, v1}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 3237
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to pause activity "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    invoke-static {v5}, Landroid/app/ActivityThread;->safeToComponentShortString(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 3243
    .end local v1           #e:Ljava/lang/Exception;
    :cond_1
    iput-boolean v6, v2, Landroid/app/ActivityThread$ActivityClientRecord;->paused:Z

    .line 3245
    :cond_2
    iget-boolean v3, v2, Landroid/app/ActivityThread$ActivityClientRecord;->stopped:Z

    if-nez v3, :cond_4

    .line 3247
    :try_start_1
    iget-object v3, v2, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->performStop()V
    :try_end_1
    .catch Landroid/app/SuperNotCalledException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 3258
    :cond_3
    iput-boolean v6, v2, Landroid/app/ActivityThread$ActivityClientRecord;->stopped:Z

    .line 3260
    :cond_4
    if-eqz p4, :cond_5

    .line 3262
    :try_start_2
    iget-object v3, v2, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->retainNonConfigurationInstances()Landroid/app/Activity$NonConfigurationInstances;

    move-result-object v3

    iput-object v3, v2, Landroid/app/ActivityThread$ActivityClientRecord;->lastNonConfigurationInstances:Landroid/app/Activity$NonConfigurationInstances;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    .line 3274
    :cond_5
    :try_start_3
    iget-object v3, v2, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    const/4 v4, 0x0

    iput-boolean v4, v3, Landroid/app/Activity;->mCalled:Z

    .line 3275
    iget-object v3, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v4, v2, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v3, v4}, Landroid/app/Instrumentation;->callActivityOnDestroy(Landroid/app/Activity;)V

    .line 3276
    iget-object v3, v2, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v3, v3, Landroid/app/Activity;->mCalled:Z

    if-nez v3, :cond_6

    .line 3277
    new-instance v3, Landroid/app/SuperNotCalledException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Activity "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    invoke-static {v5}, Landroid/app/ActivityThread;->safeToComponentShortString(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " did not call through to super.onDestroy()"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_3
    .catch Landroid/app/SuperNotCalledException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6

    .line 3284
    :catch_2
    move-exception v1

    .line 3285
    .local v1, e:Landroid/app/SuperNotCalledException;
    throw v1

    .line 3248
    .end local v1           #e:Landroid/app/SuperNotCalledException;
    :catch_3
    move-exception v1

    .line 3249
    .restart local v1       #e:Landroid/app/SuperNotCalledException;
    throw v1

    .line 3250
    .end local v1           #e:Landroid/app/SuperNotCalledException;
    :catch_4
    move-exception v1

    .line 3251
    .local v1, e:Ljava/lang/Exception;
    iget-object v3, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v4, v2, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v3, v4, v1}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 3252
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to stop activity "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    invoke-static {v5}, Landroid/app/ActivityThread;->safeToComponentShortString(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 3264
    .end local v1           #e:Ljava/lang/Exception;
    :catch_5
    move-exception v1

    .line 3265
    .restart local v1       #e:Ljava/lang/Exception;
    iget-object v3, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v4, v2, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v3, v4, v1}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 3266
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to retain activity "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 3281
    .end local v1           #e:Ljava/lang/Exception;
    :cond_6
    :try_start_4
    iget-object v3, v2, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    if-eqz v3, :cond_7

    .line 3282
    iget-object v3, v2, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    invoke-virtual {v3}, Landroid/view/Window;->closeAllPanels()V
    :try_end_4
    .catch Landroid/app/SuperNotCalledException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6

    .line 3294
    :cond_7
    iget-object v3, p0, Landroid/app/ActivityThread;->mActivities:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3295
    invoke-static {v0}, Landroid/os/StrictMode;->decrementExpectedActivityCount(Ljava/lang/Class;)V

    .line 3296
    return-object v2

    .line 3286
    :catch_6
    move-exception v1

    .line 3287
    .restart local v1       #e:Ljava/lang/Exception;
    iget-object v3, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v4, v2, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v3, v4, v1}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 3288
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to destroy activity "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    invoke-static {v5}, Landroid/app/ActivityThread;->safeToComponentShortString(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method private performLaunchActivity(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/content/Intent;)Landroid/app/Activity;
    .locals 20
    .parameter "r"
    .parameter "customIntent"
    .annotation build Landroid/annotation/LewaHook;
        value = .enum Landroid/annotation/LewaHook$LewaHookType;->CHANGE_CODE:Landroid/annotation/LewaHook$LewaHookType;
    .end annotation

    .prologue
    .line 1961
    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 1962
    .local v15, aInfo:Landroid/content/pm/ActivityInfo;
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/app/ActivityThread$ActivityClientRecord;->packageInfo:Landroid/app/LoadedApk;

    if-nez v3, :cond_0

    .line 1963
    iget-object v3, v15, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/app/ActivityThread$ActivityClientRecord;->compatInfo:Landroid/content/res/CompatibilityInfo;

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Landroid/app/ActivityThread;->getPackageInfo(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;I)Landroid/app/LoadedApk;

    move-result-object v3

    move-object/from16 v0, p1

    iput-object v3, v0, Landroid/app/ActivityThread$ActivityClientRecord;->packageInfo:Landroid/app/LoadedApk;

    .line 1967
    :cond_0
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v17

    .line 1968
    .local v17, component:Landroid/content/ComponentName;
    if-nez v17, :cond_1

    .line 1969
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    invoke-virtual {v4}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v17

    .line 1971
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1974
    :cond_1
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 1975
    new-instance v17, Landroid/content/ComponentName;

    .end local v17           #component:Landroid/content/ComponentName;
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-direct {v0, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1979
    .restart local v17       #component:Landroid/content/ComponentName;
    :cond_2
    const/4 v1, 0x0

    .line 1981
    .local v1, activity:Landroid/app/Activity;
    :try_start_0
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/app/ActivityThread$ActivityClientRecord;->packageInfo:Landroid/app/LoadedApk;

    invoke-virtual {v3}, Landroid/app/LoadedApk;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v16

    .line 1982
    .local v16, cl:Ljava/lang/ClassLoader;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual/range {v17 .. v17}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    move-object/from16 v0, v16

    invoke-virtual {v3, v0, v4, v5}, Landroid/app/Instrumentation;->newActivity(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Intent;)Landroid/app/Activity;

    move-result-object v1

    .line 1984
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3}, Landroid/os/StrictMode;->incrementExpectedActivityCount(Ljava/lang/Class;)V

    .line 1985
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 1986
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    if-eqz v3, :cond_3

    .line 1987
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1998
    .end local v16           #cl:Ljava/lang/ClassLoader;
    :cond_3
    :try_start_1
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/app/ActivityThread$ActivityClientRecord;->packageInfo:Landroid/app/LoadedApk;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v3, v4, v5}, Landroid/app/LoadedApk;->makeApplication(ZLandroid/app/Instrumentation;)Landroid/app/Application;

    move-result-object v7

    .line 2008
    .local v7, app:Landroid/app/Application;
    if-eqz v1, :cond_9

    .line 2009
    new-instance v2, Landroid/app/ContextImpl;

    invoke-direct {v2}, Landroid/app/ContextImpl;-><init>()V

    .line 2010
    .local v2, appContext:Landroid/app/ContextImpl;
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/app/ActivityThread$ActivityClientRecord;->packageInfo:Landroid/app/LoadedApk;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    move-object/from16 v0, p0

    invoke-virtual {v2, v3, v4, v0}, Landroid/app/ContextImpl;->init(Landroid/app/LoadedApk;Landroid/os/IBinder;Landroid/app/ActivityThread;)V

    .line 2011
    invoke-virtual {v2, v1}, Landroid/app/ContextImpl;->setOuterContext(Landroid/content/Context;)V

    .line 2012
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v2}, Landroid/app/ContextImpl;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v10

    .line 2013
    .local v10, title:Ljava/lang/CharSequence;
    new-instance v14, Landroid/content/res/Configuration;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/ActivityThread;->mCompatConfiguration:Landroid/content/res/Configuration;

    invoke-direct {v14, v3}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 2016
    .local v14, config:Landroid/content/res/Configuration;
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityThread;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    move-object/from16 v0, p1

    iget v6, v0, Landroid/app/ActivityThread$ActivityClientRecord;->ident:I

    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/app/ActivityThread$ActivityClientRecord;->parent:Landroid/app/Activity;

    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/app/ActivityThread$ActivityClientRecord;->embeddedID:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/app/ActivityThread$ActivityClientRecord;->lastNonConfigurationInstances:Landroid/app/Activity$NonConfigurationInstances;

    move-object/from16 v3, p0

    invoke-virtual/range {v1 .. v14}, Landroid/app/Activity;->attach(Landroid/content/Context;Landroid/app/ActivityThread;Landroid/app/Instrumentation;Landroid/os/IBinder;ILandroid/app/Application;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Ljava/lang/CharSequence;Landroid/app/Activity;Ljava/lang/String;Landroid/app/Activity$NonConfigurationInstances;Landroid/content/res/Configuration;)V

    .line 2020
    if-eqz p2, :cond_4

    .line 2021
    move-object/from16 v0, p2

    iput-object v0, v1, Landroid/app/Activity;->mIntent:Landroid/content/Intent;

    .line 2023
    :cond_4
    const/4 v3, 0x0

    move-object/from16 v0, p1

    iput-object v3, v0, Landroid/app/ActivityThread$ActivityClientRecord;->lastNonConfigurationInstances:Landroid/app/Activity$NonConfigurationInstances;

    .line 2024
    const/4 v3, 0x0

    iput-boolean v3, v1, Landroid/app/Activity;->mStartedActivity:Z

    .line 2025
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v3}, Landroid/content/pm/ActivityInfo;->getThemeResource()I

    move-result v19

    .line 2026
    .local v19, theme:I
    if-eqz v19, :cond_5

    .line 2027
    move/from16 v0, v19

    invoke-virtual {v1, v0}, Landroid/app/Activity;->setTheme(I)V

    .line 2030
    :cond_5
    const/4 v3, 0x0

    iput-boolean v3, v1, Landroid/app/Activity;->mCalled:Z

    .line 2031
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    invoke-virtual {v3, v1, v4}, Landroid/app/Instrumentation;->callActivityOnCreate(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 2032
    iget-boolean v3, v1, Landroid/app/Activity;->mCalled:Z

    if-nez v3, :cond_6

    .line 2033
    new-instance v3, Landroid/app/SuperNotCalledException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Activity "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " did not call through to super.onCreate()"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1
    .catch Landroid/app/SuperNotCalledException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 2062
    .end local v2           #appContext:Landroid/app/ContextImpl;
    .end local v7           #app:Landroid/app/Application;
    .end local v10           #title:Ljava/lang/CharSequence;
    .end local v14           #config:Landroid/content/res/Configuration;
    .end local v19           #theme:I
    :catch_0
    move-exception v18

    .line 2063
    .local v18, e:Landroid/app/SuperNotCalledException;
    throw v18

    .line 1989
    .end local v18           #e:Landroid/app/SuperNotCalledException;
    :catch_1
    move-exception v18

    .line 1990
    .local v18, e:Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    move-object/from16 v0, v18

    invoke-virtual {v3, v1, v0}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1991
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to instantiate activity "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-direct {v3, v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 2037
    .end local v18           #e:Ljava/lang/Exception;
    .restart local v2       #appContext:Landroid/app/ContextImpl;
    .restart local v7       #app:Landroid/app/Application;
    .restart local v10       #title:Ljava/lang/CharSequence;
    .restart local v14       #config:Landroid/content/res/Configuration;
    .restart local v19       #theme:I
    :cond_6
    :try_start_2
    move-object/from16 v0, p1

    iput-object v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    .line 2038
    const/4 v3, 0x1

    move-object/from16 v0, p1

    iput-boolean v3, v0, Landroid/app/ActivityThread$ActivityClientRecord;->stopped:Z

    .line 2039
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v3, v3, Landroid/app/Activity;->mFinished:Z

    if-nez v3, :cond_7

    .line 2040
    invoke-virtual {v1}, Landroid/app/Activity;->performStart()V

    .line 2041
    const/4 v3, 0x0

    move-object/from16 v0, p1

    iput-boolean v3, v0, Landroid/app/ActivityThread$ActivityClientRecord;->stopped:Z

    .line 2043
    :cond_7
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v3, v3, Landroid/app/Activity;->mFinished:Z

    if-nez v3, :cond_8

    .line 2044
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    if-eqz v3, :cond_8

    .line 2045
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    invoke-virtual {v3, v1, v4}, Landroid/app/Instrumentation;->callActivityOnRestoreInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 2048
    :cond_8
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v3, v3, Landroid/app/Activity;->mFinished:Z

    if-nez v3, :cond_9

    .line 2049
    const/4 v3, 0x0

    iput-boolean v3, v1, Landroid/app/Activity;->mCalled:Z

    .line 2050
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    invoke-virtual {v3, v1, v4}, Landroid/app/Instrumentation;->callActivityOnPostCreate(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 2051
    iget-boolean v3, v1, Landroid/app/Activity;->mCalled:Z

    if-nez v3, :cond_9

    .line 2052
    new-instance v3, Landroid/app/SuperNotCalledException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Activity "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " did not call through to super.onPostCreate()"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_2
    .catch Landroid/app/SuperNotCalledException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 2065
    .end local v2           #appContext:Landroid/app/ContextImpl;
    .end local v7           #app:Landroid/app/Application;
    .end local v10           #title:Ljava/lang/CharSequence;
    .end local v14           #config:Landroid/content/res/Configuration;
    .end local v19           #theme:I
    :catch_2
    move-exception v18

    .line 2066
    .restart local v18       #e:Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    move-object/from16 v0, v18

    invoke-virtual {v3, v1, v0}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 2067
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to start activity "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-direct {v3, v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 2058
    .end local v18           #e:Ljava/lang/Exception;
    .restart local v7       #app:Landroid/app/Application;
    :cond_9
    const/4 v3, 0x1

    :try_start_3
    move-object/from16 v0, p1

    iput-boolean v3, v0, Landroid/app/ActivityThread$ActivityClientRecord;->paused:Z

    .line 2060
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/ActivityThread;->mActivities:Ljava/util/HashMap;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    move-object/from16 v0, p1

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Landroid/app/SuperNotCalledException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 2073
    .end local v7           #app:Landroid/app/Application;
    :cond_a
    return-object v1
.end method

.method private performStopActivityInner(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/app/ActivityThread$StopInfo;ZZ)V
    .locals 5
    .parameter "r"
    .parameter "info"
    .parameter "keepShown"
    .parameter "saveState"

    .prologue
    const/4 v4, 0x1

    .line 2922
    const/4 v1, 0x0

    .line 2923
    .local v1, state:Landroid/os/Bundle;
    if-eqz p1, :cond_0

    .line 2924
    if-nez p3, :cond_2

    iget-boolean v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->stopped:Z

    if-eqz v2, :cond_2

    .line 2925
    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v2, v2, Landroid/app/Activity;->mFinished:Z

    if-eqz v2, :cond_1

    .line 2983
    :cond_0
    :goto_0
    return-void

    .line 2931
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Performing stop of activity that is not resumed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 2934
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v2, "ActivityThread"

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2937
    .end local v0           #e:Ljava/lang/RuntimeException;
    :cond_2
    if-eqz p2, :cond_3

    .line 2942
    const/4 v2, 0x0

    :try_start_0
    iput-object v2, p2, Landroid/app/ActivityThread$StopInfo;->thumbnail:Landroid/graphics/Bitmap;

    .line 2943
    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->onCreateDescription()Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p2, Landroid/app/ActivityThread$StopInfo;->description:Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2955
    :cond_3
    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v2, v2, Landroid/app/Activity;->mFinished:Z

    if-nez v2, :cond_4

    if-eqz p4, :cond_4

    .line 2956
    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    if-nez v2, :cond_7

    .line 2957
    new-instance v1, Landroid/os/Bundle;

    .end local v1           #state:Landroid/os/Bundle;
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 2958
    .restart local v1       #state:Landroid/os/Bundle;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->setAllowFds(Z)Z

    .line 2959
    iget-object v2, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v2, v3, v1}, Landroid/app/Instrumentation;->callActivityOnSaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 2960
    iput-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    .line 2966
    :cond_4
    :goto_1
    if-nez p3, :cond_6

    .line 2969
    :try_start_1
    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->performStop()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 2978
    :cond_5
    iput-boolean v4, p1, Landroid/app/ActivityThread$ActivityClientRecord;->stopped:Z

    .line 2981
    :cond_6
    iput-boolean v4, p1, Landroid/app/ActivityThread$ActivityClientRecord;->paused:Z

    goto :goto_0

    .line 2944
    :catch_0
    move-exception v0

    .line 2945
    .local v0, e:Ljava/lang/Exception;
    iget-object v2, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v2, v3, v0}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 2946
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to save state of activity "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 2962
    .end local v0           #e:Ljava/lang/Exception;
    :cond_7
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    goto :goto_1

    .line 2970
    :catch_1
    move-exception v0

    .line 2971
    .restart local v0       #e:Ljava/lang/Exception;
    iget-object v2, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v2, v3, v0}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 2972
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to stop activity "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private queueOrSendMessage(ILjava/lang/Object;)V
    .locals 1
    .parameter "what"
    .parameter "obj"

    .prologue
    const/4 v0, 0x0

    .line 1928
    invoke-direct {p0, p1, p2, v0, v0}, Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;II)V

    .line 1929
    return-void
.end method

.method private queueOrSendMessage(ILjava/lang/Object;I)V
    .locals 1
    .parameter "what"
    .parameter "obj"
    .parameter "arg1"

    .prologue
    .line 1932
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;II)V

    .line 1933
    return-void
.end method

.method private queueOrSendMessage(ILjava/lang/Object;II)V
    .locals 2
    .parameter "what"
    .parameter "obj"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 1936
    monitor-enter p0

    .line 1940
    :try_start_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1941
    .local v0, msg:Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 1942
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1943
    iput p3, v0, Landroid/os/Message;->arg1:I

    .line 1944
    iput p4, v0, Landroid/os/Message;->arg2:I

    .line 1945
    iget-object v1, p0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    invoke-virtual {v1, v0}, Landroid/app/ActivityThread$H;->sendMessage(Landroid/os/Message;)Z

    .line 1946
    monitor-exit p0

    .line 1947
    return-void

    .line 1946
    .end local v0           #msg:Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static safeToComponentShortString(Landroid/content/Intent;)Ljava/lang/String;
    .locals 2
    .parameter "intent"

    .prologue
    .line 3300
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 3301
    .local v0, component:Landroid/content/ComponentName;
    if-nez v0, :cond_0

    const-string v1, "[Unknown]"

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private setupGraphicsSupport(Landroid/app/LoadedApk;Ljava/io/File;)V
    .locals 4
    .parameter "info"
    .parameter "cacheDir"

    .prologue
    .line 3924
    invoke-static {}, Landroid/os/Process;->isIsolated()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3941
    :cond_0
    :goto_0
    return-void

    .line 3929
    :cond_1
    :try_start_0
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    .line 3930
    .local v1, uid:I
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    .line 3934
    .local v0, packages:[Ljava/lang/String;
    if-eqz v0, :cond_0

    array-length v2, v0

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 3935
    invoke-static {p2}, Landroid/view/HardwareRenderer;->setupDiskCache(Ljava/io/File;)V

    .line 3936
    invoke-static {p2}, Landroid/renderscript/RenderScript;->setupDiskCache(Ljava/io/File;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3938
    .end local v0           #packages:[Ljava/lang/String;
    .end local v1           #uid:I
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static systemMain()Landroid/app/ActivityThread;
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 4755
    invoke-static {v1}, Landroid/view/HardwareRenderer;->disable(Z)V

    .line 4756
    new-instance v0, Landroid/app/ActivityThread;

    invoke-direct {v0}, Landroid/app/ActivityThread;-><init>()V

    .line 4757
    .local v0, thread:Landroid/app/ActivityThread;
    invoke-direct {v0, v1}, Landroid/app/ActivityThread;->attach(Z)V

    .line 4758
    return-object v0
.end method

.method private updateVisibility(Landroid/app/ActivityThread$ActivityClientRecord;Z)V
    .locals 3
    .parameter "r"
    .parameter "show"

    .prologue
    .line 2986
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-object v0, v1, Landroid/app/Activity;->mDecor:Landroid/view/View;

    .line 2987
    .local v0, v:Landroid/view/View;
    if-eqz v0, :cond_1

    .line 2988
    if-eqz p2, :cond_2

    .line 2989
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v1, v1, Landroid/app/Activity;->mVisibleFromServer:Z

    if-nez v1, :cond_0

    .line 2990
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/app/Activity;->mVisibleFromServer:Z

    .line 2991
    iget v1, p0, Landroid/app/ActivityThread;->mNumVisibleActivities:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/app/ActivityThread;->mNumVisibleActivities:I

    .line 2992
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v1, v1, Landroid/app/Activity;->mVisibleFromClient:Z

    if-eqz v1, :cond_0

    .line 2993
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->makeVisible()V

    .line 2996
    :cond_0
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->newConfig:Landroid/content/res/Configuration;

    if-eqz v1, :cond_1

    .line 2999
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->newConfig:Landroid/content/res/Configuration;

    invoke-static {v1, v2}, Landroid/app/ActivityThread;->performConfigurationChanged(Landroid/content/ComponentCallbacks2;Landroid/content/res/Configuration;)V

    .line 3000
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-object v1, v1, Landroid/app/Activity;->mCurrentConfig:Landroid/content/res/Configuration;

    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->newConfig:Landroid/content/res/Configuration;

    invoke-virtual {v1, v2}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/app/ActivityThread;->freeTextLayoutCachesIfNeeded(I)V

    .line 3001
    const/4 v1, 0x0

    iput-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->newConfig:Landroid/content/res/Configuration;

    .line 3011
    :cond_1
    :goto_0
    return-void

    .line 3004
    :cond_2
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v1, v1, Landroid/app/Activity;->mVisibleFromServer:Z

    if-eqz v1, :cond_1

    .line 3005
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/app/Activity;->mVisibleFromServer:Z

    .line 3006
    iget v1, p0, Landroid/app/ActivityThread;->mNumVisibleActivities:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/app/ActivityThread;->mNumVisibleActivities:I

    .line 3007
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public final acquireExistingProvider(Landroid/content/Context;Ljava/lang/String;Z)Landroid/content/IContentProvider;
    .locals 6
    .parameter "c"
    .parameter "name"
    .parameter "stable"

    .prologue
    .line 4360
    iget-object v5, p0, Landroid/app/ActivityThread;->mProviderMap:Ljava/util/HashMap;

    monitor-enter v5

    .line 4361
    :try_start_0
    iget-object v4, p0, Landroid/app/ActivityThread;->mProviderMap:Ljava/util/HashMap;

    invoke-virtual {v4, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityThread$ProviderClientRecord;

    .line 4362
    .local v1, pr:Landroid/app/ActivityThread$ProviderClientRecord;
    if-nez v1, :cond_0

    .line 4363
    const/4 v3, 0x0

    monitor-exit v5

    .line 4375
    :goto_0
    return-object v3

    .line 4366
    :cond_0
    iget-object v3, v1, Landroid/app/ActivityThread$ProviderClientRecord;->mProvider:Landroid/content/IContentProvider;

    .line 4367
    .local v3, provider:Landroid/content/IContentProvider;
    invoke-interface {v3}, Landroid/content/IContentProvider;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 4371
    .local v0, jBinder:Landroid/os/IBinder;
    iget-object v4, p0, Landroid/app/ActivityThread;->mProviderRefCountMap:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityThread$ProviderRefCount;

    .line 4372
    .local v2, prc:Landroid/app/ActivityThread$ProviderRefCount;
    if-eqz v2, :cond_1

    .line 4373
    invoke-direct {p0, v2, p3}, Landroid/app/ActivityThread;->incProviderRefLocked(Landroid/app/ActivityThread$ProviderRefCount;Z)V

    .line 4375
    :cond_1
    monitor-exit v5

    goto :goto_0

    .line 4376
    .end local v0           #jBinder:Landroid/os/IBinder;
    .end local v1           #pr:Landroid/app/ActivityThread$ProviderClientRecord;
    .end local v2           #prc:Landroid/app/ActivityThread$ProviderRefCount;
    .end local v3           #provider:Landroid/content/IContentProvider;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public final acquireProvider(Landroid/content/Context;Ljava/lang/String;Z)Landroid/content/IContentProvider;
    .locals 8
    .parameter "c"
    .parameter "name"
    .parameter "stable"

    .prologue
    .line 4263
    invoke-virtual {p0, p1, p2, p3}, Landroid/app/ActivityThread;->acquireExistingProvider(Landroid/content/Context;Ljava/lang/String;Z)Landroid/content/IContentProvider;

    move-result-object v7

    .line 4264
    .local v7, provider:Landroid/content/IContentProvider;
    if-eqz v7, :cond_0

    .line 4289
    .end local v7           #provider:Landroid/content/IContentProvider;
    :goto_0
    return-object v7

    .line 4274
    .restart local v7       #provider:Landroid/content/IContentProvider;
    :cond_0
    const/4 v2, 0x0

    .line 4276
    .local v2, holder:Landroid/app/IActivityManager$ContentProviderHolder;
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v1

    invoke-interface {v0, v1, p2, p3}, Landroid/app/IActivityManager;->getContentProvider(Landroid/app/IApplicationThread;Ljava/lang/String;Z)Landroid/app/IActivityManager$ContentProviderHolder;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 4280
    :goto_1
    if-nez v2, :cond_1

    .line 4281
    const-string v0, "ActivityThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to find provider info for "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4282
    const/4 v7, 0x0

    goto :goto_0

    .line 4287
    :cond_1
    iget-object v3, v2, Landroid/app/IActivityManager$ContentProviderHolder;->info:Landroid/content/pm/ProviderInfo;

    const/4 v4, 0x1

    iget-boolean v5, v2, Landroid/app/IActivityManager$ContentProviderHolder;->noReleaseNeeded:Z

    move-object v0, p0

    move-object v1, p1

    move v6, p3

    invoke-direct/range {v0 .. v6}, Landroid/app/ActivityThread;->installProvider(Landroid/content/Context;Landroid/app/IActivityManager$ContentProviderHolder;Landroid/content/pm/ProviderInfo;ZZZ)Landroid/app/IActivityManager$ContentProviderHolder;

    move-result-object v2

    .line 4289
    iget-object v7, v2, Landroid/app/IActivityManager$ContentProviderHolder;->provider:Landroid/content/IContentProvider;

    goto :goto_0

    .line 4278
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method final applyCompatConfiguration()Landroid/content/res/Configuration;
    .locals 3

    .prologue
    .line 3726
    iget-object v0, p0, Landroid/app/ActivityThread;->mConfiguration:Landroid/content/res/Configuration;

    .line 3727
    .local v0, config:Landroid/content/res/Configuration;
    iget-object v1, p0, Landroid/app/ActivityThread;->mCompatConfiguration:Landroid/content/res/Configuration;

    if-nez v1, :cond_0

    .line 3728
    new-instance v1, Landroid/content/res/Configuration;

    invoke-direct {v1}, Landroid/content/res/Configuration;-><init>()V

    iput-object v1, p0, Landroid/app/ActivityThread;->mCompatConfiguration:Landroid/content/res/Configuration;

    .line 3730
    :cond_0
    iget-object v1, p0, Landroid/app/ActivityThread;->mCompatConfiguration:Landroid/content/res/Configuration;

    iget-object v2, p0, Landroid/app/ActivityThread;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v1, v2}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 3731
    iget-object v1, p0, Landroid/app/ActivityThread;->mResCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/app/ActivityThread;->mResCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    invoke-virtual {v1}, Landroid/content/res/CompatibilityInfo;->supportsScreen()Z

    move-result v1

    if-nez v1, :cond_1

    .line 3732
    iget-object v1, p0, Landroid/app/ActivityThread;->mResCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    iget-object v2, p0, Landroid/app/ActivityThread;->mCompatConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v1, v2}, Landroid/content/res/CompatibilityInfo;->applyToConfiguration(Landroid/content/res/Configuration;)V

    .line 3733
    iget-object v0, p0, Landroid/app/ActivityThread;->mCompatConfiguration:Landroid/content/res/Configuration;

    .line 3735
    :cond_1
    return-object v0
.end method

.method applyConfigCompatMainThread(Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)Landroid/content/res/Configuration;
    .locals 1
    .parameter "config"
    .parameter "compat"

    .prologue
    .line 1548
    if-nez p1, :cond_0

    .line 1549
    const/4 v0, 0x0

    .line 1556
    :goto_0
    return-object v0

    .line 1551
    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/content/res/CompatibilityInfo;->supportsScreen()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1552
    iget-object v0, p0, Landroid/app/ActivityThread;->mMainThreadConfig:Landroid/content/res/Configuration;

    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 1553
    iget-object p1, p0, Landroid/app/ActivityThread;->mMainThreadConfig:Landroid/content/res/Configuration;

    .line 1554
    invoke-virtual {p2, p1}, Landroid/content/res/CompatibilityInfo;->applyToConfiguration(Landroid/content/res/Configuration;)V

    :cond_1
    move-object v0, p1

    .line 1556
    goto :goto_0
.end method

.method public final applyConfigurationToResources(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "config"

    .prologue
    .line 3649
    iget-object v1, p0, Landroid/app/ActivityThread;->mPackages:Ljava/util/HashMap;

    monitor-enter v1

    .line 3650
    :try_start_0
    iget v0, p1, Landroid/content/res/Configuration;->uiMode:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 3651
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/app/ActivityThread;->applyConfigurationToResourcesLocked(Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)Z

    .line 3654
    :goto_0
    monitor-exit v1

    .line 3655
    return-void

    .line 3653
    :cond_0
    invoke-direct {p0}, Landroid/app/ActivityThread;->applyResourceFlush()V

    goto :goto_0

    .line 3654
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method final applyConfigurationToResourcesLocked(Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)Z
    .locals 8
    .parameter "config"
    .parameter "compat"
    .annotation build Landroid/annotation/LewaHook;
        value = .enum Landroid/annotation/LewaHook$LewaHookType;->CHANGE_CODE:Landroid/annotation/LewaHook$LewaHookType;
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 3674
    iget-object v7, p0, Landroid/app/ActivityThread;->mResConfiguration:Landroid/content/res/Configuration;

    if-nez v7, :cond_0

    .line 3675
    new-instance v7, Landroid/content/res/Configuration;

    invoke-direct {v7}, Landroid/content/res/Configuration;-><init>()V

    iput-object v7, p0, Landroid/app/ActivityThread;->mResConfiguration:Landroid/content/res/Configuration;

    .line 3677
    :cond_0
    iget-object v7, p0, Landroid/app/ActivityThread;->mResConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v7, p1}, Landroid/content/res/Configuration;->isOtherSeqNewer(Landroid/content/res/Configuration;)Z

    move-result v7

    if-nez v7, :cond_1

    if-nez p2, :cond_1

    .line 3722
    :goto_0
    return v6

    .line 3682
    :cond_1
    iget-object v7, p0, Landroid/app/ActivityThread;->mResConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v7, p1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    move-result v0

    .line 3683
    .local v0, changes:I
    const/4 v7, 0x0

    invoke-virtual {p0, v7, v5}, Landroid/app/ActivityThread;->getDisplayMetricsLocked(Landroid/content/res/CompatibilityInfo;Z)Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 3685
    .local v1, dm:Landroid/util/DisplayMetrics;
    if-eqz p2, :cond_3

    iget-object v7, p0, Landroid/app/ActivityThread;->mResCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    if-eqz v7, :cond_2

    iget-object v7, p0, Landroid/app/ActivityThread;->mResCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    invoke-virtual {v7, p2}, Landroid/content/res/CompatibilityInfo;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 3687
    :cond_2
    iput-object p2, p0, Landroid/app/ActivityThread;->mResCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    .line 3688
    or-int/lit16 v0, v0, 0xd00

    .line 3694
    :cond_3
    iget-object v7, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-eqz v7, :cond_4

    .line 3695
    iget-object v7, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v7}, Ljava/util/Locale;->setDefault(Ljava/util/Locale;)V

    .line 3698
    :cond_4
    invoke-static {p1, v1, p2}, Landroid/content/res/Resources;->updateSystemConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;)V

    .line 3700
    invoke-static {}, Landroid/app/ApplicationPackageManager;->configurationChanged()V

    .line 3703
    iget-object v7, p0, Landroid/app/ActivityThread;->mActiveResources:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 3707
    .local v2, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;>;"
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 3708
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    .line 3709
    .local v4, v:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;"
    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/res/Resources;

    .line 3710
    .local v3, r:Landroid/content/res/Resources;
    if-eqz v3, :cond_5

    .line 3713
    invoke-virtual {v3, p1, v1, p2}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;)V

    goto :goto_1

    .line 3718
    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 3722
    .end local v3           #r:Landroid/content/res/Resources;
    .end local v4           #v:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;"
    :cond_6
    invoke-virtual {p0, v0}, Landroid/app/ActivityThread;->freeTextLayoutCachesIfNeeded(I)V

    if-eqz v0, :cond_7

    :goto_2
    move v6, v5

    goto :goto_0

    :cond_7
    move v5, v6

    goto :goto_2
.end method

.method collectComponentCallbacks(ZLandroid/content/res/Configuration;)Ljava/util/ArrayList;
    .locals 11
    .parameter "allActivities"
    .parameter "newConfig"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Landroid/content/res/Configuration;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ComponentCallbacks2;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3554
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 3556
    .local v3, callbacks:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ComponentCallbacks2;>;"
    iget-object v10, p0, Landroid/app/ActivityThread;->mPackages:Ljava/util/HashMap;

    monitor-enter v10

    .line 3557
    :try_start_0
    iget-object v9, p0, Landroid/app/ActivityThread;->mAllApplications:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3558
    .local v0, N:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v0, :cond_0

    .line 3559
    iget-object v9, p0, Landroid/app/ActivityThread;->mAllApplications:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3558
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 3561
    :cond_0
    iget-object v9, p0, Landroid/app/ActivityThread;->mActivities:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->size()I

    move-result v9

    if-lez v9, :cond_4

    .line 3562
    iget-object v9, p0, Landroid/app/ActivityThread;->mActivities:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 3563
    .local v2, ar:Landroid/app/ActivityThread$ActivityClientRecord;
    iget-object v1, v2, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    .line 3564
    .local v1, a:Landroid/app/Activity;
    if-eqz v1, :cond_1

    .line 3565
    iget-object v9, v2, Landroid/app/ActivityThread$ActivityClientRecord;->packageInfo:Landroid/app/LoadedApk;

    iget-object v9, v9, Landroid/app/LoadedApk;->mCompatibilityInfo:Landroid/view/CompatibilityInfoHolder;

    invoke-virtual {v9}, Landroid/view/CompatibilityInfoHolder;->getIfNeeded()Landroid/content/res/CompatibilityInfo;

    move-result-object v9

    invoke-virtual {p0, p2, v9}, Landroid/app/ActivityThread;->applyConfigCompatMainThread(Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)Landroid/content/res/Configuration;

    move-result-object v8

    .line 3567
    .local v8, thisConfig:Landroid/content/res/Configuration;
    iget-object v9, v2, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v9, v9, Landroid/app/Activity;->mFinished:Z

    if-nez v9, :cond_3

    if-nez p1, :cond_2

    iget-boolean v9, v2, Landroid/app/ActivityThread$ActivityClientRecord;->paused:Z

    if-nez v9, :cond_3

    .line 3570
    :cond_2
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 3591
    .end local v0           #N:I
    .end local v1           #a:Landroid/app/Activity;
    .end local v2           #ar:Landroid/app/ActivityThread$ActivityClientRecord;
    .end local v4           #i:I
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v8           #thisConfig:Landroid/content/res/Configuration;
    :catchall_0
    move-exception v9

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v9

    .line 3571
    .restart local v0       #N:I
    .restart local v1       #a:Landroid/app/Activity;
    .restart local v2       #ar:Landroid/app/ActivityThread$ActivityClientRecord;
    .restart local v4       #i:I
    .restart local v5       #i$:Ljava/util/Iterator;
    .restart local v8       #thisConfig:Landroid/content/res/Configuration;
    :cond_3
    if-eqz v8, :cond_1

    .line 3581
    :try_start_1
    iput-object v8, v2, Landroid/app/ActivityThread$ActivityClientRecord;->newConfig:Landroid/content/res/Configuration;

    goto :goto_1

    .line 3586
    .end local v1           #a:Landroid/app/Activity;
    .end local v2           #ar:Landroid/app/ActivityThread$ActivityClientRecord;
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v8           #thisConfig:Landroid/content/res/Configuration;
    :cond_4
    iget-object v9, p0, Landroid/app/ActivityThread;->mServices:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->size()I

    move-result v9

    if-lez v9, :cond_5

    .line 3587
    iget-object v9, p0, Landroid/app/ActivityThread;->mServices:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .restart local v5       #i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/Service;

    .line 3588
    .local v7, service:Landroid/app/Service;
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 3591
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v7           #service:Landroid/app/Service;
    :cond_5
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3592
    iget-object v10, p0, Landroid/app/ActivityThread;->mProviderMap:Ljava/util/HashMap;

    monitor-enter v10

    .line 3593
    :try_start_2
    iget-object v9, p0, Landroid/app/ActivityThread;->mLocalProviders:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->size()I

    move-result v9

    if-lez v9, :cond_6

    .line 3594
    iget-object v9, p0, Landroid/app/ActivityThread;->mLocalProviders:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .restart local v5       #i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityThread$ProviderClientRecord;

    .line 3595
    .local v6, providerClientRecord:Landroid/app/ActivityThread$ProviderClientRecord;
    iget-object v9, v6, Landroid/app/ActivityThread$ProviderClientRecord;->mLocalProvider:Landroid/content/ContentProvider;

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 3598
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v6           #providerClientRecord:Landroid/app/ActivityThread$ProviderClientRecord;
    :catchall_1
    move-exception v9

    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v9

    :cond_6
    :try_start_3
    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 3600
    return-object v3
.end method

.method final completeRemoveProvider(Landroid/app/ActivityThread$ProviderRefCount;)V
    .locals 8
    .parameter "prc"

    .prologue
    .line 4469
    iget-object v6, p0, Landroid/app/ActivityThread;->mProviderMap:Ljava/util/HashMap;

    monitor-enter v6

    .line 4470
    :try_start_0
    iget-boolean v5, p1, Landroid/app/ActivityThread$ProviderRefCount;->removePending:Z

    if-nez v5, :cond_0

    .line 4476
    monitor-exit v6

    .line 4505
    :goto_0
    return-void

    .line 4479
    :cond_0
    iget-object v5, p1, Landroid/app/ActivityThread$ProviderRefCount;->holder:Landroid/app/IActivityManager$ContentProviderHolder;

    iget-object v5, v5, Landroid/app/IActivityManager$ContentProviderHolder;->provider:Landroid/content/IContentProvider;

    invoke-interface {v5}, Landroid/content/IContentProvider;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 4480
    .local v2, jBinder:Landroid/os/IBinder;
    iget-object v5, p0, Landroid/app/ActivityThread;->mProviderRefCountMap:Ljava/util/HashMap;

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityThread$ProviderRefCount;

    .line 4481
    .local v0, existingPrc:Landroid/app/ActivityThread$ProviderRefCount;
    if-ne v0, p1, :cond_1

    .line 4482
    iget-object v5, p0, Landroid/app/ActivityThread;->mProviderRefCountMap:Ljava/util/HashMap;

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4485
    :cond_1
    iget-object v5, p0, Landroid/app/ActivityThread;->mProviderMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 4486
    .local v1, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/app/ActivityThread$ProviderClientRecord;>;"
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 4487
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityThread$ProviderClientRecord;

    .line 4488
    .local v4, pr:Landroid/app/ActivityThread$ProviderClientRecord;
    iget-object v5, v4, Landroid/app/ActivityThread$ProviderClientRecord;->mProvider:Landroid/content/IContentProvider;

    invoke-interface {v5}, Landroid/content/IContentProvider;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 4489
    .local v3, myBinder:Landroid/os/IBinder;
    if-ne v3, v2, :cond_2

    .line 4490
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 4493
    .end local v0           #existingPrc:Landroid/app/ActivityThread$ProviderRefCount;
    .end local v1           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/app/ActivityThread$ProviderClientRecord;>;"
    .end local v2           #jBinder:Landroid/os/IBinder;
    .end local v3           #myBinder:Landroid/os/IBinder;
    .end local v4           #pr:Landroid/app/ActivityThread$ProviderClientRecord;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .restart local v0       #existingPrc:Landroid/app/ActivityThread$ProviderRefCount;
    .restart local v1       #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/app/ActivityThread$ProviderClientRecord;>;"
    .restart local v2       #jBinder:Landroid/os/IBinder;
    :cond_3
    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4500
    :try_start_2
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    iget-object v6, p1, Landroid/app/ActivityThread$ProviderRefCount;->holder:Landroid/app/IActivityManager$ContentProviderHolder;

    iget-object v6, v6, Landroid/app/IActivityManager$ContentProviderHolder;->connection:Landroid/os/IBinder;

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Landroid/app/IActivityManager;->removeContentProvider(Landroid/os/IBinder;Z)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 4502
    :catch_0
    move-exception v5

    goto :goto_0
.end method

.method doGcIfNeeded()V
    .locals 6

    .prologue
    .line 1841
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/app/ActivityThread;->mGcIdlerScheduled:Z

    .line 1842
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1845
    .local v0, now:J
    invoke-static {}, Lcom/android/internal/os/BinderInternal;->getLastGcTime()J

    move-result-wide v2

    const-wide/16 v4, 0x1388

    add-long/2addr v2, v4

    cmp-long v2, v2, v0

    if-gez v2, :cond_0

    .line 1847
    const-string v2, "bg"

    invoke-static {v2}, Lcom/android/internal/os/BinderInternal;->forceGc(Ljava/lang/String;)V

    .line 1849
    :cond_0
    return-void
.end method

.method ensureJitEnabled()V
    .locals 1

    .prologue
    .line 1818
    iget-boolean v0, p0, Landroid/app/ActivityThread;->mJitEnabled:Z

    if-nez v0, :cond_0

    .line 1819
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/ActivityThread;->mJitEnabled:Z

    .line 1820
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    invoke-virtual {v0}, Ldalvik/system/VMRuntime;->startJitCompilation()V

    .line 1822
    :cond_0
    return-void
.end method

.method final finishInstrumentation(ILandroid/os/Bundle;)V
    .locals 2
    .parameter "resultCode"
    .parameter "results"

    .prologue
    .line 4222
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 4223
    .local v0, am:Landroid/app/IActivityManager;
    iget-object v1, p0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    iget-object v1, v1, Landroid/app/ActivityThread$Profiler;->profileFile:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    iget-boolean v1, v1, Landroid/app/ActivityThread$Profiler;->handlingProfiling:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    iget-object v1, v1, Landroid/app/ActivityThread$Profiler;->profileFd:Landroid/os/ParcelFileDescriptor;

    if-nez v1, :cond_0

    .line 4225
    invoke-static {}, Landroid/os/Debug;->stopMethodTracing()V

    .line 4230
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/app/ActivityThread;->mAppThread:Landroid/app/ActivityThread$ApplicationThread;

    invoke-interface {v0, v1, p1, p2}, Landroid/app/IActivityManager;->finishInstrumentation(Landroid/app/IApplicationThread;ILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4233
    :goto_0
    return-void

    .line 4231
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method final freeTextLayoutCachesIfNeeded(I)V
    .locals 2
    .parameter "configDiff"
    .annotation build Landroid/annotation/LewaHook;
        value = .enum Landroid/annotation/LewaHook$LewaHookType;->CHANGE_CODE:Landroid/annotation/LewaHook$LewaHookType;
    .end annotation

    .prologue
    if-eqz p1, :cond_1

    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    .local v0, hasLocaleConfigChange:Z
    :goto_0
    if-eqz v0, :cond_0

    invoke-static {}, Landroid/graphics/Canvas;->freeTextLayoutCaches()V

    :cond_0
    invoke-static {p1}, Landroid/app/ActivityThread$Injector;->FreeCanvasCaches(I)V

    .end local v0           #hasLocaleConfigChange:Z
    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getActivity(Landroid/os/IBinder;)Landroid/app/Activity;
    .locals 1
    .parameter "token"

    .prologue
    .line 1912
    iget-object v0, p0, Landroid/app/ActivityThread;->mActivities:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityThread$ActivityClientRecord;

    iget-object v0, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method public getApplication()Landroid/app/Application;
    .locals 1

    .prologue
    .line 1780
    iget-object v0, p0, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    return-object v0
.end method

.method public getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;
    .locals 1

    .prologue
    .line 1754
    iget-object v0, p0, Landroid/app/ActivityThread;->mAppThread:Landroid/app/ActivityThread$ApplicationThread;

    return-object v0
.end method

.method public getConfiguration()Landroid/content/res/Configuration;
    .locals 1

    .prologue
    .line 1763
    iget-object v0, p0, Landroid/app/ActivityThread;->mResConfiguration:Landroid/content/res/Configuration;

    return-object v0
.end method

.method getDisplayMetricsLocked(Landroid/content/res/CompatibilityInfo;Z)Landroid/util/DisplayMetrics;
    .locals 4
    .parameter "ci"
    .parameter "forceUpdate"

    .prologue
    .line 1530
    iget-object v3, p0, Landroid/app/ActivityThread;->mDisplayMetrics:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/DisplayMetrics;

    .line 1531
    .local v1, dm:Landroid/util/DisplayMetrics;
    if-eqz v1, :cond_0

    if-nez p2, :cond_0

    move-object v2, v1

    .line 1543
    .end local v1           #dm:Landroid/util/DisplayMetrics;
    .local v2, dm:Landroid/util/DisplayMetrics;
    :goto_0
    return-object v2

    .line 1534
    .end local v2           #dm:Landroid/util/DisplayMetrics;
    .restart local v1       #dm:Landroid/util/DisplayMetrics;
    :cond_0
    if-nez v1, :cond_1

    .line 1535
    new-instance v1, Landroid/util/DisplayMetrics;

    .end local v1           #dm:Landroid/util/DisplayMetrics;
    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1536
    .restart local v1       #dm:Landroid/util/DisplayMetrics;
    iget-object v3, p0, Landroid/app/ActivityThread;->mDisplayMetrics:Ljava/util/HashMap;

    invoke-virtual {v3, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1538
    :cond_1
    invoke-static {p1}, Landroid/view/WindowManagerImpl;->getDefault(Landroid/content/res/CompatibilityInfo;)Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 1539
    .local v0, d:Landroid/view/Display;
    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    move-object v2, v1

    .line 1543
    .end local v1           #dm:Landroid/util/DisplayMetrics;
    .restart local v2       #dm:Landroid/util/DisplayMetrics;
    goto :goto_0
.end method

.method final getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 1630
    iget-object v0, p0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    return-object v0
.end method

.method public getInstrumentation()Landroid/app/Instrumentation;
    .locals 1

    .prologue
    .line 1759
    iget-object v0, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    return-object v0
.end method

.method public getIntCoreSetting(Ljava/lang/String;I)I
    .locals 2
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 4768
    iget-object v1, p0, Landroid/app/ActivityThread;->mPackages:Ljava/util/HashMap;

    monitor-enter v1

    .line 4769
    :try_start_0
    iget-object v0, p0, Landroid/app/ActivityThread;->mCoreSettings:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 4770
    iget-object v0, p0, Landroid/app/ActivityThread;->mCoreSettings:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p2

    .end local p2
    monitor-exit v1

    .line 4772
    :goto_0
    return p2

    .restart local p2
    :cond_0
    monitor-exit v1

    goto :goto_0

    .line 4774
    .end local p2
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getLooper()Landroid/os/Looper;
    .locals 1

    .prologue
    .line 1776
    iget-object v0, p0, Landroid/app/ActivityThread;->mLooper:Landroid/os/Looper;

    return-object v0
.end method

.method public final getPackageInfo(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;I)Landroid/app/LoadedApk;
    .locals 7
    .parameter "ai"
    .parameter "compatInfo"
    .parameter "flags"

    .prologue
    const/4 v4, 0x0

    const/4 v0, 0x1

    .line 1677
    and-int/lit8 v1, p3, 0x1

    if-eqz v1, :cond_3

    move v5, v0

    .line 1678
    .local v5, includeCode:Z
    :goto_0
    if-eqz v5, :cond_1

    iget v1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eqz v1, :cond_1

    iget v1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v2, 0x3e8

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    if-eqz v1, :cond_0

    iget v1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v2, p0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    iget-object v2, v2, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1, v2}, Landroid/os/UserId;->isSameApp(II)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    move v4, v0

    .line 1682
    .local v4, securityViolation:Z
    :cond_1
    and-int/lit8 v1, p3, 0x3

    if-ne v1, v0, :cond_4

    .line 1685
    if-eqz v4, :cond_4

    .line 1686
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Requesting code from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " (with uid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1688
    .local v6, msg:Ljava/lang/String;
    iget-object v0, p0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    if-eqz v0, :cond_2

    .line 1689
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to be run in process "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    iget-object v1, v1, Landroid/app/ActivityThread$AppBindData;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " (with uid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    iget-object v1, v1, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1693
    :cond_2
    new-instance v0, Ljava/lang/SecurityException;

    invoke-direct {v0, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .end local v4           #securityViolation:Z
    .end local v5           #includeCode:Z
    .end local v6           #msg:Ljava/lang/String;
    :cond_3
    move v5, v4

    .line 1677
    goto/16 :goto_0

    .line 1696
    .restart local v4       #securityViolation:Z
    .restart local v5       #includeCode:Z
    :cond_4
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Landroid/app/ActivityThread;->getPackageInfo(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;Ljava/lang/ClassLoader;ZZ)Landroid/app/LoadedApk;

    move-result-object v0

    return-object v0
.end method

.method public final getPackageInfo(Ljava/lang/String;Landroid/content/res/CompatibilityInfo;I)Landroid/app/LoadedApk;
    .locals 7
    .parameter "packageName"
    .parameter "compatInfo"
    .parameter "flags"

    .prologue
    const/4 v4, 0x0

    .line 1635
    iget-object v5, p0, Landroid/app/ActivityThread;->mPackages:Ljava/util/HashMap;

    monitor-enter v5

    .line 1637
    and-int/lit8 v3, p3, 0x1

    if-eqz v3, :cond_1

    .line 1638
    :try_start_0
    iget-object v3, p0, Landroid/app/ActivityThread;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 1642
    .local v2, ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    :goto_0
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/LoadedApk;

    move-object v1, v3

    .line 1646
    .local v1, packageInfo:Landroid/app/LoadedApk;
    :goto_1
    if-eqz v1, :cond_4

    iget-object v3, v1, Landroid/app/LoadedApk;->mResources:Landroid/content/res/Resources;

    if-eqz v3, :cond_0

    iget-object v3, v1, Landroid/app/LoadedApk;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v3}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/AssetManager;->isUpToDate()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1648
    :cond_0
    invoke-virtual {v1}, Landroid/app/LoadedApk;->isSecurityViolation()Z

    move-result v3

    if-eqz v3, :cond_3

    and-int/lit8 v3, p3, 0x2

    if-nez v3, :cond_3

    .line 1650
    new-instance v3, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Requesting code from "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " to be run in process "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    iget-object v6, v6, Landroid/app/ActivityThread$AppBindData;->processName:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "/"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    iget-object v6, v6, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1658
    .end local v1           #packageInfo:Landroid/app/LoadedApk;
    .end local v2           #ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    :catchall_0
    move-exception v3

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 1640
    :cond_1
    :try_start_1
    iget-object v3, p0, Landroid/app/ActivityThread;->mResourcePackages:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .restart local v2       #ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    goto :goto_0

    :cond_2
    move-object v1, v4

    .line 1642
    goto :goto_1

    .line 1656
    .restart local v1       #packageInfo:Landroid/app/LoadedApk;
    :cond_3
    monitor-exit v5

    .line 1672
    .end local v1           #packageInfo:Landroid/app/LoadedApk;
    :goto_2
    return-object v1

    .line 1658
    .restart local v1       #packageInfo:Landroid/app/LoadedApk;
    :cond_4
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1660
    const/4 v0, 0x0

    .line 1662
    .local v0, ai:Landroid/content/pm/ApplicationInfo;
    :try_start_2
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    const/16 v5, 0x400

    invoke-static {}, Landroid/os/UserId;->myUserId()I

    move-result v6

    invoke-interface {v3, p1, v5, v6}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v0

    .line 1668
    :goto_3
    if-eqz v0, :cond_5

    .line 1669
    invoke-virtual {p0, v0, p2, p3}, Landroid/app/ActivityThread;->getPackageInfo(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;I)Landroid/app/LoadedApk;

    move-result-object v1

    goto :goto_2

    :cond_5
    move-object v1, v4

    .line 1672
    goto :goto_2

    .line 1664
    :catch_0
    move-exception v3

    goto :goto_3
.end method

.method public final getPackageInfoNoCheck(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;)Landroid/app/LoadedApk;
    .locals 6
    .parameter "ai"
    .parameter "compatInfo"

    .prologue
    .line 1701
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Landroid/app/ActivityThread;->getPackageInfo(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;Ljava/lang/ClassLoader;ZZ)Landroid/app/LoadedApk;

    move-result-object v0

    return-object v0
.end method

.method public getProcessName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1784
    iget-object v0, p0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    iget-object v0, v0, Landroid/app/ActivityThread$AppBindData;->processName:Ljava/lang/String;

    return-object v0
.end method

.method public getProfileFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1772
    iget-object v0, p0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    iget-object v0, v0, Landroid/app/ActivityThread$Profiler;->profileFile:Ljava/lang/String;

    return-object v0
.end method

.method public getSystemContext()Landroid/app/ContextImpl;
    .locals 6

    .prologue
    .line 1788
    monitor-enter p0

    .line 1789
    :try_start_0
    sget-object v1, Landroid/app/ActivityThread;->mSystemContext:Landroid/app/ContextImpl;

    if-nez v1, :cond_0

    .line 1790
    invoke-static {p0}, Landroid/app/ContextImpl;->createSystemContext(Landroid/app/ActivityThread;)Landroid/app/ContextImpl;

    move-result-object v3

    .line 1792
    .local v3, context:Landroid/app/ContextImpl;
    new-instance v0, Landroid/app/LoadedApk;

    const-string v2, "android"

    const/4 v4, 0x0

    sget-object v5, Landroid/content/res/CompatibilityInfo;->DEFAULT_COMPATIBILITY_INFO:Landroid/content/res/CompatibilityInfo;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/app/LoadedApk;-><init>(Landroid/app/ActivityThread;Ljava/lang/String;Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;)V

    .line 1794
    .local v0, info:Landroid/app/LoadedApk;
    const/4 v1, 0x0

    invoke-virtual {v3, v0, v1, p0}, Landroid/app/ContextImpl;->init(Landroid/app/LoadedApk;Landroid/os/IBinder;Landroid/app/ActivityThread;)V

    .line 1795
    invoke-virtual {v3}, Landroid/app/ContextImpl;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/ActivityThread;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    sget-object v4, Landroid/content/res/CompatibilityInfo;->DEFAULT_COMPATIBILITY_INFO:Landroid/content/res/CompatibilityInfo;

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Landroid/app/ActivityThread;->getDisplayMetricsLocked(Landroid/content/res/CompatibilityInfo;Z)Landroid/util/DisplayMetrics;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 1798
    sput-object v3, Landroid/app/ActivityThread;->mSystemContext:Landroid/app/ContextImpl;

    .line 1802
    .end local v0           #info:Landroid/app/LoadedApk;
    .end local v3           #context:Landroid/app/ContextImpl;
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1803
    sget-object v1, Landroid/app/ActivityThread;->mSystemContext:Landroid/app/ContextImpl;

    return-object v1

    .line 1802
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method getTopLevelResources(Ljava/lang/String;Landroid/app/LoadedApk;)Landroid/content/res/Resources;
    .locals 1
    .parameter "resDir"
    .parameter "pkgInfo"

    .prologue
    .line 1626
    iget-object v0, p2, Landroid/app/LoadedApk;->mCompatibilityInfo:Landroid/view/CompatibilityInfoHolder;

    invoke-virtual {v0}, Landroid/view/CompatibilityInfoHolder;->get()Landroid/content/res/CompatibilityInfo;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/app/ActivityThread;->getTopLevelResources(Ljava/lang/String;Landroid/content/res/CompatibilityInfo;)Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method getTopLevelResources(Ljava/lang/String;Landroid/content/res/CompatibilityInfo;)Landroid/content/res/Resources;
    .locals 9
    .parameter "resDir"
    .parameter "compInfo"
    .annotation build Landroid/annotation/LewaHook;
        value = .enum Landroid/annotation/LewaHook$LewaHookType;->NEW_METHOD:Landroid/annotation/LewaHook$LewaHookType;
    .end annotation

    .prologue
    const/4 v1, 0x0

    new-instance v2, Landroid/app/ActivityThread$ResourcesKey;

    iget v6, p2, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    iget-boolean v7, p2, Landroid/content/res/CompatibilityInfo;->isThemeable:Z

    invoke-direct {v2, p1, v6, v7}, Landroid/app/ActivityThread$ResourcesKey;-><init>(Ljava/lang/String;FZ)V

    .local v2, key:Landroid/app/ActivityThread$ResourcesKey;
    iget-object v7, p0, Landroid/app/ActivityThread;->mPackages:Ljava/util/HashMap;

    monitor-enter v7

    :try_start_0
    iget-object v6, p0, Landroid/app/ActivityThread;->mActiveResources:Ljava/util/HashMap;

    invoke-virtual {v6, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/ref/WeakReference;

    .line 1576
    .local v5, wr:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;"
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/res/Resources;

    move-object v4, v6

    .line 1578
    .local v4, r:Landroid/content/res/Resources;
    :goto_0
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/AssetManager;->isUpToDate()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1583
    monitor-exit v7

    move-object v1, v4

    .line 1618
    :cond_0
    :goto_1
    return-object v1

    .end local v4           #r:Landroid/content/res/Resources;
    :cond_1
    move-object v4, v1

    .line 1576
    goto :goto_0

    .line 1585
    .restart local v4       #r:Landroid/content/res/Resources;
    :cond_2
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1592
    new-instance v0, Landroid/content/res/AssetManager;

    invoke-direct {v0}, Landroid/content/res/AssetManager;-><init>()V

    .line 1593
    .local v0, assets:Landroid/content/res/AssetManager;
    iget-boolean v6, p2, Landroid/content/res/CompatibilityInfo;->isThemeable:Z

    invoke-virtual {v0, v6}, Landroid/content/res/AssetManager;->setThemeSupport(Z)V

    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->addAssetPath(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {p0, v0, p2}, Landroid/app/ActivityThread$Injector;->attachTheme(Landroid/app/ActivityThread;Landroid/content/res/AssetManager;Landroid/content/res/CompatibilityInfo;)V

    .line 1598
    const/4 v6, 0x0

    invoke-virtual {p0, v1, v6}, Landroid/app/ActivityThread;->getDisplayMetricsLocked(Landroid/content/res/CompatibilityInfo;Z)Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 1599
    .local v3, metrics:Landroid/util/DisplayMetrics;
    new-instance v4, Landroid/content/res/LewaResources;

    .end local v4           #r:Landroid/content/res/Resources;
    invoke-virtual {p0}, Landroid/app/ActivityThread;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    invoke-direct {v4, v0, v3, v6, p2}, Landroid/content/res/LewaResources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)V

    .line 1606
    .restart local v4       #r:Landroid/content/res/Resources;
    iget-object v7, p0, Landroid/app/ActivityThread;->mPackages:Ljava/util/HashMap;

    monitor-enter v7

    .line 1607
    :try_start_1
    iget-object v6, p0, Landroid/app/ActivityThread;->mActiveResources:Ljava/util/HashMap;

    invoke-virtual {v6, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #wr:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;"
    check-cast v5, Ljava/lang/ref/WeakReference;

    .line 1608
    .restart local v5       #wr:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;"
    if-eqz v5, :cond_3

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/res/Resources;

    move-object v1, v6

    .line 1609
    .local v1, existing:Landroid/content/res/Resources;
    :cond_3
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/AssetManager;->isUpToDate()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1612
    invoke-virtual {v4}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/AssetManager;->close()V

    .line 1613
    monitor-exit v7

    goto :goto_1

    .line 1619
    .end local v1           #existing:Landroid/content/res/Resources;
    .end local v5           #wr:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;"
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6

    .line 1585
    .end local v0           #assets:Landroid/content/res/AssetManager;
    .end local v3           #metrics:Landroid/util/DisplayMetrics;
    .end local v4           #r:Landroid/content/res/Resources;
    :catchall_1
    move-exception v6

    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v6

    .line 1617
    .restart local v0       #assets:Landroid/content/res/AssetManager;
    .restart local v1       #existing:Landroid/content/res/Resources;
    .restart local v3       #metrics:Landroid/util/DisplayMetrics;
    .restart local v4       #r:Landroid/content/res/Resources;
    .restart local v5       #wr:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;"
    :cond_4
    :try_start_3
    iget-object v6, p0, Landroid/app/ActivityThread;->mActiveResources:Ljava/util/HashMap;

    new-instance v8, Ljava/lang/ref/WeakReference;

    invoke-direct {v8, v4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v6, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1618
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v1, v4

    goto :goto_1
.end method

.method getTopLevelResources(Ljava/lang/String;Ljava/lang/String;Landroid/app/LoadedApk;)Landroid/content/res/Resources;
    .locals 1
    .parameter "packageName"
    .parameter "resDir"
    .parameter "pkgInfo"
    .annotation build Landroid/annotation/LewaHook;
        value = .enum Landroid/annotation/LewaHook$LewaHookType;->NEW_METHOD:Landroid/annotation/LewaHook$LewaHookType;
    .end annotation

    .prologue
    iget-object v0, p3, Landroid/app/LoadedApk;->mCompatibilityInfo:Landroid/view/CompatibilityInfoHolder;

    invoke-virtual {v0}, Landroid/view/CompatibilityInfoHolder;->get()Landroid/content/res/CompatibilityInfo;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Landroid/app/ActivityThread;->getTopLevelResources(Ljava/lang/String;Ljava/lang/String;Landroid/content/res/CompatibilityInfo;)Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method getTopLevelResources(Ljava/lang/String;Ljava/lang/String;Landroid/content/res/CompatibilityInfo;)Landroid/content/res/Resources;
    .locals 3
    .parameter "packageName"
    .parameter "resDir"
    .parameter "compInfo"
    .annotation build Landroid/annotation/LewaHook;
        value = .enum Landroid/annotation/LewaHook$LewaHookType;->NEW_METHOD:Landroid/annotation/LewaHook$LewaHookType;
    .end annotation

    .prologue
    invoke-virtual {p0, p2, p3}, Landroid/app/ActivityThread;->getTopLevelResources(Ljava/lang/String;Landroid/content/res/CompatibilityInfo;)Landroid/content/res/Resources;

    move-result-object v1

    .local v1, resources:Landroid/content/res/Resources;
    const/4 v0, 0x0

    .local v0, isThemeCompatibilityModeEnabled:Z
    move-object v2, v1

    check-cast v2, Landroid/content/res/LewaResources;

    invoke-virtual {v2, p1, v0}, Landroid/content/res/LewaResources;->init(Ljava/lang/String;Z)V

    return-object v1
.end method

.method final handleActivityConfigurationChanged(Landroid/os/IBinder;)V
    .locals 3
    .parameter "token"

    .prologue
    .line 3798
    iget-object v1, p0, Landroid/app/ActivityThread;->mActivities:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 3799
    .local v0, r:Landroid/app/ActivityThread$ActivityClientRecord;
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    if-nez v1, :cond_1

    .line 3809
    :cond_0
    :goto_0
    return-void

    .line 3806
    :cond_1
    iget-object v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-object v2, p0, Landroid/app/ActivityThread;->mCompatConfiguration:Landroid/content/res/Configuration;

    invoke-static {v1, v2}, Landroid/app/ActivityThread;->performConfigurationChanged(Landroid/content/ComponentCallbacks2;Landroid/content/res/Configuration;)V

    .line 3808
    iget-object v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-object v1, v1, Landroid/app/Activity;->mCurrentConfig:Landroid/content/res/Configuration;

    iget-object v2, p0, Landroid/app/ActivityThread;->mCompatConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v1, v2}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/app/ActivityThread;->freeTextLayoutCachesIfNeeded(I)V

    goto :goto_0
.end method

.method final handleConfigurationChanged(Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)V
    .locals 6
    .parameter "config"
    .parameter "compat"

    .prologue
    .line 3740
    const/4 v2, 0x0

    .line 3742
    .local v2, configDiff:I
    iget-object v5, p0, Landroid/app/ActivityThread;->mPackages:Ljava/util/HashMap;

    monitor-enter v5

    .line 3743
    :try_start_0
    iget-object v4, p0, Landroid/app/ActivityThread;->mPendingConfiguration:Landroid/content/res/Configuration;

    if-eqz v4, :cond_1

    .line 3744
    iget-object v4, p0, Landroid/app/ActivityThread;->mPendingConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v4, p1}, Landroid/content/res/Configuration;->isOtherSeqNewer(Landroid/content/res/Configuration;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 3745
    iget-object p1, p0, Landroid/app/ActivityThread;->mPendingConfiguration:Landroid/content/res/Configuration;

    .line 3747
    :cond_0
    const/4 v4, 0x0

    iput-object v4, p0, Landroid/app/ActivityThread;->mPendingConfiguration:Landroid/content/res/Configuration;

    .line 3750
    :cond_1
    if-nez p1, :cond_3

    .line 3751
    monitor-exit v5

    .line 3784
    :cond_2
    :goto_0
    return-void

    .line 3757
    :cond_3
    invoke-virtual {p0, p1, p2}, Landroid/app/ActivityThread;->applyConfigurationToResourcesLocked(Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)Z

    .line 3759
    iget-object v4, p0, Landroid/app/ActivityThread;->mConfiguration:Landroid/content/res/Configuration;

    if-nez v4, :cond_4

    .line 3760
    new-instance v4, Landroid/content/res/Configuration;

    invoke-direct {v4}, Landroid/content/res/Configuration;-><init>()V

    iput-object v4, p0, Landroid/app/ActivityThread;->mConfiguration:Landroid/content/res/Configuration;

    .line 3762
    :cond_4
    iget-object v4, p0, Landroid/app/ActivityThread;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v4, p1}, Landroid/content/res/Configuration;->isOtherSeqNewer(Landroid/content/res/Configuration;)Z

    move-result v4

    if-nez v4, :cond_5

    if-nez p2, :cond_5

    .line 3763
    monitor-exit v5

    goto :goto_0

    .line 3768
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 3765
    :cond_5
    :try_start_1
    iget-object v4, p0, Landroid/app/ActivityThread;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v4, p1}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v2

    .line 3766
    iget-object v4, p0, Landroid/app/ActivityThread;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v4, p1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    .line 3767
    invoke-virtual {p0}, Landroid/app/ActivityThread;->applyCompatConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    .line 3768
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3771
    const/4 v4, 0x0

    invoke-virtual {p0, v4, p1}, Landroid/app/ActivityThread;->collectComponentCallbacks(ZLandroid/content/res/Configuration;)Ljava/util/ArrayList;

    move-result-object v1

    .line 3774
    .local v1, callbacks:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ComponentCallbacks2;>;"
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/WindowManagerImpl;->trimLocalMemory()V

    .line 3776
    invoke-virtual {p0, v2}, Landroid/app/ActivityThread;->freeTextLayoutCachesIfNeeded(I)V

    .line 3778
    if-eqz v1, :cond_2

    .line 3779
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3780
    .local v0, N:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v0, :cond_2

    .line 3781
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentCallbacks2;

    invoke-static {v4, p1}, Landroid/app/ActivityThread;->performConfigurationChanged(Landroid/content/ComponentCallbacks2;Landroid/content/res/Configuration;)V

    .line 3780
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method final handleDispatchPackageBroadcast(I[Ljava/lang/String;)V
    .locals 5
    .parameter "cmd"
    .parameter "packages"

    .prologue
    .line 3860
    const/4 v0, 0x0

    .line 3861
    .local v0, hasPkgInfo:Z
    if-eqz p2, :cond_2

    .line 3862
    array-length v3, p2

    add-int/lit8 v1, v3, -0x1

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_2

    .line 3864
    if-nez v0, :cond_0

    .line 3866
    iget-object v3, p0, Landroid/app/ActivityThread;->mPackages:Ljava/util/HashMap;

    aget-object v4, p2, v1

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 3867
    .local v2, ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 3868
    const/4 v0, 0x1

    .line 3876
    .end local v2           #ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    :cond_0
    :goto_1
    iget-object v3, p0, Landroid/app/ActivityThread;->mPackages:Ljava/util/HashMap;

    aget-object v4, p2, v1

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3877
    iget-object v3, p0, Landroid/app/ActivityThread;->mResourcePackages:Ljava/util/HashMap;

    aget-object v4, p2, v1

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3862
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 3870
    .restart local v2       #ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    :cond_1
    iget-object v3, p0, Landroid/app/ActivityThread;->mResourcePackages:Ljava/util/HashMap;

    aget-object v4, p2, v1

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 3871
    .restart local v2       #ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3872
    const/4 v0, 0x1

    goto :goto_1

    .line 3880
    .end local v1           #i:I
    .end local v2           #ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    :cond_2
    invoke-static {p1, p2, v0}, Landroid/app/ApplicationPackageManager;->handlePackageBroadcast(I[Ljava/lang/String;Z)V

    .line 3882
    return-void
.end method

.method final handleLowMemory()V
    .locals 6

    .prologue
    .line 3885
    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Landroid/app/ActivityThread;->collectComponentCallbacks(ZLandroid/content/res/Configuration;)Ljava/util/ArrayList;

    move-result-object v1

    .line 3887
    .local v1, callbacks:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ComponentCallbacks2;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3888
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 3889
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentCallbacks2;

    invoke-interface {v4}, Landroid/content/ComponentCallbacks2;->onLowMemory()V

    .line 3888
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3893
    :cond_0
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4

    const/16 v5, 0x3e8

    if-eq v4, v5, :cond_1

    .line 3894
    invoke-static {}, Landroid/database/sqlite/SQLiteDatabase;->releaseMemory()I

    move-result v3

    .line 3895
    .local v3, sqliteReleased:I
    const v4, 0x124fb

    invoke-static {v4, v3}, Landroid/util/EventLog;->writeEvent(II)I

    .line 3899
    .end local v3           #sqliteReleased:I
    :cond_1
    invoke-static {}, Landroid/graphics/Canvas;->freeCaches()V

    .line 3902
    invoke-static {}, Landroid/graphics/Canvas;->freeTextLayoutCaches()V

    .line 3904
    const-string/jumbo v4, "mem"

    invoke-static {v4}, Lcom/android/internal/os/BinderInternal;->forceGc(Ljava/lang/String;)V

    .line 3905
    return-void
.end method

.method final handleProfilerControl(ZLandroid/app/ActivityThread$ProfilerControlData;I)V
    .locals 4
    .parameter "start"
    .parameter "pcd"
    .parameter "profileType"

    .prologue
    .line 3812
    if-eqz p1, :cond_0

    .line 3816
    :try_start_0
    iget-object v1, p0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    iget-object v2, p2, Landroid/app/ActivityThread$ProfilerControlData;->path:Ljava/lang/String;

    iget-object v3, p2, Landroid/app/ActivityThread$ProfilerControlData;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1, v2, v3}, Landroid/app/ActivityThread$Profiler;->setProfiler(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)V

    .line 3817
    iget-object v1, p0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/app/ActivityThread$Profiler;->autoStopProfiler:Z

    .line 3818
    iget-object v1, p0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    invoke-virtual {v1}, Landroid/app/ActivityThread$Profiler;->startProfiling()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3826
    :try_start_1
    iget-object v1, p2, Landroid/app/ActivityThread$ProfilerControlData;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 3838
    :goto_0
    return-void

    .line 3821
    :catch_0
    move-exception v0

    .line 3822
    .local v0, e:Ljava/lang/RuntimeException;
    :try_start_2
    const-string v1, "ActivityThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Profiling failed on path "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p2, Landroid/app/ActivityThread$ProfilerControlData;->path:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " -- can the process access this path?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3826
    :try_start_3
    iget-object v1, p2, Landroid/app/ActivityThread$ProfilerControlData;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 3827
    :catch_1
    move-exception v0

    .line 3828
    .local v0, e:Ljava/io/IOException;
    const-string v1, "ActivityThread"

    const-string v2, "Failure closing profile fd"

    :goto_1
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 3825
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v1

    .line 3826
    :try_start_4
    iget-object v2, p2, Landroid/app/ActivityThread$ProfilerControlData;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 3825
    :goto_2
    throw v1

    .line 3834
    :cond_0
    iget-object v1, p0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    invoke-virtual {v1}, Landroid/app/ActivityThread$Profiler;->stopProfiling()V

    goto :goto_0

    .line 3827
    :catch_2
    move-exception v0

    .line 3828
    .restart local v0       #e:Ljava/io/IOException;
    const-string v2, "ActivityThread"

    const-string v3, "Failure closing profile fd"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 3827
    .end local v0           #e:Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 3828
    .restart local v0       #e:Ljava/io/IOException;
    const-string v1, "ActivityThread"

    const-string v2, "Failure closing profile fd"

    goto :goto_1
.end method

.method final handleResumeActivity(Landroid/os/IBinder;ZZ)V
    .locals 12
    .parameter "token"
    .parameter "clearHide"
    .parameter "isForward"

    .prologue
    const/4 v11, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 2609
    invoke-virtual {p0}, Landroid/app/ActivityThread;->unscheduleGcIdler()V

    .line 2611
    invoke-virtual {p0, p1, p2}, Landroid/app/ActivityThread;->performResumeActivity(Landroid/os/IBinder;Z)Landroid/app/ActivityThread$ActivityClientRecord;

    move-result-object v4

    .line 2613
    .local v4, r:Landroid/app/ActivityThread$ActivityClientRecord;
    if-eqz v4, :cond_9

    .line 2614
    iget-object v0, v4, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    .line 2621
    .local v0, a:Landroid/app/Activity;
    if-eqz p3, :cond_6

    const/16 v2, 0x100

    .line 2627
    .local v2, forwardBit:I
    :goto_0
    iget-boolean v9, v0, Landroid/app/Activity;->mStartedActivity:Z

    if-nez v9, :cond_7

    move v5, v8

    .line 2628
    .local v5, willBeVisible:Z
    :goto_1
    if-nez v5, :cond_0

    .line 2630
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v9

    invoke-virtual {v0}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v10

    invoke-interface {v9, v10}, Landroid/app/IActivityManager;->willActivityBeVisible(Landroid/os/IBinder;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v5

    .line 2635
    :cond_0
    :goto_2
    iget-object v9, v4, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    if-nez v9, :cond_8

    iget-boolean v9, v0, Landroid/app/Activity;->mFinished:Z

    if-nez v9, :cond_8

    if-eqz v5, :cond_8

    .line 2636
    iget-object v9, v4, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v9}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v9

    iput-object v9, v4, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    .line 2637
    iget-object v9, v4, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    invoke-virtual {v9}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 2638
    .local v1, decor:Landroid/view/View;
    const/4 v9, 0x4

    invoke-virtual {v1, v9}, Landroid/view/View;->setVisibility(I)V

    .line 2639
    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v6

    .line 2640
    .local v6, wm:Landroid/view/ViewManager;
    iget-object v9, v4, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    invoke-virtual {v9}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    .line 2641
    .local v3, l:Landroid/view/WindowManager$LayoutParams;
    iput-object v1, v0, Landroid/app/Activity;->mDecor:Landroid/view/View;

    .line 2642
    iput v8, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 2643
    iget v9, v3, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    or-int/2addr v9, v2

    iput v9, v3, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 2644
    iget-boolean v9, v0, Landroid/app/Activity;->mVisibleFromClient:Z

    if-eqz v9, :cond_1

    .line 2645
    iput-boolean v8, v0, Landroid/app/Activity;->mWindowAdded:Z

    .line 2646
    invoke-interface {v6, v1, v3}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2659
    .end local v1           #decor:Landroid/view/View;
    .end local v3           #l:Landroid/view/WindowManager$LayoutParams;
    .end local v6           #wm:Landroid/view/ViewManager;
    :cond_1
    :goto_3
    invoke-static {v4}, Landroid/app/ActivityThread;->cleanUpPendingRemoveWindows(Landroid/app/ActivityThread$ActivityClientRecord;)V

    .line 2663
    iget-object v9, v4, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v9, v9, Landroid/app/Activity;->mFinished:Z

    if-nez v9, :cond_4

    if-eqz v5, :cond_4

    iget-object v9, v4, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-object v9, v9, Landroid/app/Activity;->mDecor:Landroid/view/View;

    if-eqz v9, :cond_4

    iget-boolean v9, v4, Landroid/app/ActivityThread$ActivityClientRecord;->hideForNow:Z

    if-nez v9, :cond_4

    .line 2665
    iget-object v9, v4, Landroid/app/ActivityThread$ActivityClientRecord;->newConfig:Landroid/content/res/Configuration;

    if-eqz v9, :cond_2

    .line 2668
    iget-object v9, v4, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-object v10, v4, Landroid/app/ActivityThread$ActivityClientRecord;->newConfig:Landroid/content/res/Configuration;

    invoke-static {v9, v10}, Landroid/app/ActivityThread;->performConfigurationChanged(Landroid/content/ComponentCallbacks2;Landroid/content/res/Configuration;)V

    .line 2669
    iget-object v9, v4, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-object v9, v9, Landroid/app/Activity;->mCurrentConfig:Landroid/content/res/Configuration;

    iget-object v10, v4, Landroid/app/ActivityThread$ActivityClientRecord;->newConfig:Landroid/content/res/Configuration;

    invoke-virtual {v9, v10}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v9

    invoke-virtual {p0, v9}, Landroid/app/ActivityThread;->freeTextLayoutCachesIfNeeded(I)V

    .line 2670
    iput-object v11, v4, Landroid/app/ActivityThread$ActivityClientRecord;->newConfig:Landroid/content/res/Configuration;

    .line 2674
    :cond_2
    iget-object v9, v4, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    invoke-virtual {v9}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    .line 2675
    .restart local v3       #l:Landroid/view/WindowManager$LayoutParams;
    iget v9, v3, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    and-int/lit16 v9, v9, 0x100

    if-eq v9, v2, :cond_3

    .line 2678
    iget v9, v3, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    and-int/lit16 v9, v9, -0x101

    or-int/2addr v9, v2

    iput v9, v3, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 2681
    iget-object v9, v4, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v9, v9, Landroid/app/Activity;->mVisibleFromClient:Z

    if-eqz v9, :cond_3

    .line 2682
    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v6

    .line 2683
    .restart local v6       #wm:Landroid/view/ViewManager;
    iget-object v9, v4, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    invoke-virtual {v9}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 2684
    .restart local v1       #decor:Landroid/view/View;
    invoke-interface {v6, v1, v3}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2687
    .end local v1           #decor:Landroid/view/View;
    .end local v6           #wm:Landroid/view/ViewManager;
    :cond_3
    iget-object v9, v4, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iput-boolean v8, v9, Landroid/app/Activity;->mVisibleFromServer:Z

    .line 2688
    iget v8, p0, Landroid/app/ActivityThread;->mNumVisibleActivities:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Landroid/app/ActivityThread;->mNumVisibleActivities:I

    .line 2689
    iget-object v8, v4, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v8, v8, Landroid/app/Activity;->mVisibleFromClient:Z

    if-eqz v8, :cond_4

    .line 2690
    iget-object v8, v4, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/app/Activity;->makeVisible()V

    .line 2694
    .end local v3           #l:Landroid/view/WindowManager$LayoutParams;
    :cond_4
    iget-boolean v8, v4, Landroid/app/ActivityThread$ActivityClientRecord;->onlyLocalRequest:Z

    if-nez v8, :cond_5

    .line 2695
    iget-object v8, p0, Landroid/app/ActivityThread;->mNewActivities:Landroid/app/ActivityThread$ActivityClientRecord;

    iput-object v8, v4, Landroid/app/ActivityThread$ActivityClientRecord;->nextIdle:Landroid/app/ActivityThread$ActivityClientRecord;

    .line 2696
    iput-object v4, p0, Landroid/app/ActivityThread;->mNewActivities:Landroid/app/ActivityThread$ActivityClientRecord;

    .line 2699
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v8

    new-instance v9, Landroid/app/ActivityThread$Idler;

    invoke-direct {v9, p0, v11}, Landroid/app/ActivityThread$Idler;-><init>(Landroid/app/ActivityThread;Landroid/app/ActivityThread$1;)V

    invoke-virtual {v8, v9}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 2701
    :cond_5
    iput-boolean v7, v4, Landroid/app/ActivityThread$ActivityClientRecord;->onlyLocalRequest:Z

    .line 2712
    .end local v0           #a:Landroid/app/Activity;
    .end local v2           #forwardBit:I
    .end local v5           #willBeVisible:Z
    :goto_4
    return-void

    .restart local v0       #a:Landroid/app/Activity;
    :cond_6
    move v2, v7

    .line 2621
    goto/16 :goto_0

    .restart local v2       #forwardBit:I
    :cond_7
    move v5, v7

    .line 2627
    goto/16 :goto_1

    .line 2652
    .restart local v5       #willBeVisible:Z
    :cond_8
    if-nez v5, :cond_1

    .line 2655
    iput-boolean v8, v4, Landroid/app/ActivityThread$ActivityClientRecord;->hideForNow:Z

    goto/16 :goto_3

    .line 2707
    .end local v0           #a:Landroid/app/Activity;
    .end local v2           #forwardBit:I
    .end local v5           #willBeVisible:Z
    :cond_9
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-interface {v7, p1, v8, v9}, Landroid/app/IActivityManager;->finishActivity(Landroid/os/IBinder;ILandroid/content/Intent;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    .line 2709
    :catch_0
    move-exception v7

    goto :goto_4

    .line 2632
    .restart local v0       #a:Landroid/app/Activity;
    .restart local v2       #forwardBit:I
    .restart local v5       #willBeVisible:Z
    :catch_1
    move-exception v9

    goto/16 :goto_2
.end method

.method final handleTrimMemory(I)V
    .locals 6
    .parameter "level"

    .prologue
    .line 3910
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v3

    .line 3911
    .local v3, windowManager:Landroid/view/WindowManagerImpl;
    invoke-virtual {v3, p1}, Landroid/view/WindowManagerImpl;->startTrimMemory(I)V

    .line 3913
    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Landroid/app/ActivityThread;->collectComponentCallbacks(ZLandroid/content/res/Configuration;)Ljava/util/ArrayList;

    move-result-object v1

    .line 3915
    .local v1, callbacks:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ComponentCallbacks2;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3916
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 3917
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentCallbacks2;

    invoke-interface {v4, p1}, Landroid/content/ComponentCallbacks2;->onTrimMemory(I)V

    .line 3916
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3920
    :cond_0
    invoke-virtual {v3}, Landroid/view/WindowManagerImpl;->endTrimMemory()V

    .line 3921
    return-void
.end method

.method final handleUnstableProviderDied(Landroid/os/IBinder;Z)V
    .locals 10
    .parameter "provider"
    .parameter "fromClient"

    .prologue
    .line 4508
    iget-object v7, p0, Landroid/app/ActivityThread;->mProviderMap:Ljava/util/HashMap;

    monitor-enter v7

    .line 4509
    :try_start_0
    iget-object v6, p0, Landroid/app/ActivityThread;->mProviderRefCountMap:Ljava/util/HashMap;

    invoke-virtual {v6, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityThread$ProviderRefCount;

    .line 4510
    .local v5, prc:Landroid/app/ActivityThread$ProviderRefCount;
    if-eqz v5, :cond_2

    .line 4513
    iget-object v6, p0, Landroid/app/ActivityThread;->mProviderRefCountMap:Ljava/util/HashMap;

    invoke-virtual {v6, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4514
    iget-object v6, v5, Landroid/app/ActivityThread$ProviderRefCount;->client:Landroid/app/ActivityThread$ProviderClientRecord;

    if-eqz v6, :cond_1

    iget-object v6, v5, Landroid/app/ActivityThread$ProviderRefCount;->client:Landroid/app/ActivityThread$ProviderClientRecord;

    iget-object v6, v6, Landroid/app/ActivityThread$ProviderClientRecord;->mNames:[Ljava/lang/String;

    if-eqz v6, :cond_1

    .line 4515
    iget-object v6, v5, Landroid/app/ActivityThread$ProviderRefCount;->client:Landroid/app/ActivityThread$ProviderClientRecord;

    iget-object v0, v6, Landroid/app/ActivityThread$ProviderClientRecord;->mNames:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 4516
    .local v3, name:Ljava/lang/String;
    iget-object v6, p0, Landroid/app/ActivityThread;->mProviderMap:Ljava/util/HashMap;

    invoke-virtual {v6, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityThread$ProviderClientRecord;

    .line 4517
    .local v4, pr:Landroid/app/ActivityThread$ProviderClientRecord;
    if-eqz v4, :cond_0

    iget-object v6, v4, Landroid/app/ActivityThread$ProviderClientRecord;->mProvider:Landroid/content/IContentProvider;

    invoke-interface {v6}, Landroid/content/IContentProvider;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    if-ne v6, p1, :cond_0

    .line 4518
    const-string v6, "ActivityThread"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Removing dead content provider: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4519
    iget-object v6, p0, Landroid/app/ActivityThread;->mProviderMap:Ljava/util/HashMap;

    invoke-virtual {v6, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4515
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4523
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v3           #name:Ljava/lang/String;
    .end local v4           #pr:Landroid/app/ActivityThread$ProviderClientRecord;
    :cond_1
    if-eqz p2, :cond_2

    .line 4530
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v6

    iget-object v8, v5, Landroid/app/ActivityThread$ProviderRefCount;->holder:Landroid/app/IActivityManager$ContentProviderHolder;

    iget-object v8, v8, Landroid/app/IActivityManager$ContentProviderHolder;->connection:Landroid/os/IBinder;

    invoke-interface {v6, v8}, Landroid/app/IActivityManager;->unstableProviderDied(Landroid/os/IBinder;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 4537
    :cond_2
    :goto_1
    :try_start_2
    monitor-exit v7

    .line 4538
    return-void

    .line 4537
    .end local v5           #prc:Landroid/app/ActivityThread$ProviderRefCount;
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v6

    .line 4532
    .restart local v5       #prc:Landroid/app/ActivityThread$ProviderRefCount;
    :catch_0
    move-exception v6

    goto :goto_1
.end method

.method public installSystemApplicationInfo(Landroid/content/pm/ApplicationInfo;)V
    .locals 6
    .parameter "info"

    .prologue
    .line 1807
    monitor-enter p0

    .line 1808
    :try_start_0
    invoke-virtual {p0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v3

    .line 1809
    .local v3, context:Landroid/app/ContextImpl;
    new-instance v0, Landroid/app/LoadedApk;

    const-string v2, "android"

    sget-object v5, Landroid/content/res/CompatibilityInfo;->DEFAULT_COMPATIBILITY_INFO:Landroid/content/res/CompatibilityInfo;

    move-object v1, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Landroid/app/LoadedApk;-><init>(Landroid/app/ActivityThread;Ljava/lang/String;Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;)V

    const/4 v1, 0x0

    invoke-virtual {v3, v0, v1, p0}, Landroid/app/ContextImpl;->init(Landroid/app/LoadedApk;Landroid/os/IBinder;Landroid/app/ActivityThread;)V

    .line 1813
    new-instance v0, Landroid/app/ActivityThread$Profiler;

    invoke-direct {v0}, Landroid/app/ActivityThread$Profiler;-><init>()V

    iput-object v0, p0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    .line 1814
    monitor-exit p0

    .line 1815
    return-void

    .line 1814
    .end local v3           #context:Landroid/app/ContextImpl;
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final installSystemProviders(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ProviderInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4762
    .local p1, providers:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ProviderInfo;>;"
    if-eqz p1, :cond_0

    .line 4763
    iget-object v0, p0, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    invoke-direct {p0, v0, p1}, Landroid/app/ActivityThread;->installContentProviders(Landroid/content/Context;Ljava/util/List;)V

    .line 4765
    :cond_0
    return-void
.end method

.method public isProfiling()Z
    .locals 1

    .prologue
    .line 1767
    iget-object v0, p0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    iget-object v0, v0, Landroid/app/ActivityThread$Profiler;->profileFile:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    iget-object v0, v0, Landroid/app/ActivityThread$Profiler;->profileFd:Landroid/os/ParcelFileDescriptor;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final peekPackageInfo(Ljava/lang/String;Z)Landroid/app/LoadedApk;
    .locals 3
    .parameter "packageName"
    .parameter "includeCode"

    .prologue
    .line 1705
    iget-object v2, p0, Landroid/app/ActivityThread;->mPackages:Ljava/util/HashMap;

    monitor-enter v2

    .line 1707
    if-eqz p2, :cond_0

    .line 1708
    :try_start_0
    iget-object v1, p0, Landroid/app/ActivityThread;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 1712
    .local v0, ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/LoadedApk;

    :goto_1
    monitor-exit v2

    return-object v1

    .line 1710
    .end local v0           #ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    :cond_0
    iget-object v1, p0, Landroid/app/ActivityThread;->mResourcePackages:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .restart local v0       #ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    goto :goto_0

    .line 1712
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 1713
    .end local v0           #ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final performDestroyActivity(Landroid/os/IBinder;Z)Landroid/app/ActivityThread$ActivityClientRecord;
    .locals 1
    .parameter "token"
    .parameter "finishing"

    .prologue
    const/4 v0, 0x0

    .line 3208
    invoke-direct {p0, p1, p2, v0, v0}, Landroid/app/ActivityThread;->performDestroyActivity(Landroid/os/IBinder;ZIZ)Landroid/app/ActivityThread$ActivityClientRecord;

    move-result-object v0

    return-object v0
.end method

.method public final performNewIntents(Landroid/os/IBinder;Ljava/util/List;)V
    .locals 5
    .parameter "token"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            "Ljava/util/List",
            "<",
            "Landroid/content/Intent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, intents:Ljava/util/List;,"Ljava/util/List<Landroid/content/Intent;>;"
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2166
    iget-object v4, p0, Landroid/app/ActivityThread;->mActivities:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 2167
    .local v0, r:Landroid/app/ActivityThread$ActivityClientRecord;
    if-eqz v0, :cond_1

    .line 2168
    iget-boolean v4, v0, Landroid/app/ActivityThread$ActivityClientRecord;->paused:Z

    if-nez v4, :cond_2

    move v1, v2

    .line 2169
    .local v1, resumed:Z
    :goto_0
    if-eqz v1, :cond_0

    .line 2170
    iget-object v4, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iput-boolean v2, v4, Landroid/app/Activity;->mTemporaryPause:Z

    .line 2171
    iget-object v2, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v4, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v2, v4}, Landroid/app/Instrumentation;->callActivityOnPause(Landroid/app/Activity;)V

    .line 2173
    :cond_0
    invoke-direct {p0, v0, p2}, Landroid/app/ActivityThread;->deliverNewIntents(Landroid/app/ActivityThread$ActivityClientRecord;Ljava/util/List;)V

    .line 2174
    if-eqz v1, :cond_1

    .line 2175
    iget-object v2, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->performResume()V

    .line 2176
    iget-object v2, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iput-boolean v3, v2, Landroid/app/Activity;->mTemporaryPause:Z

    .line 2179
    .end local v1           #resumed:Z
    :cond_1
    return-void

    :cond_2
    move v1, v3

    .line 2168
    goto :goto_0
.end method

.method final performPauseActivity(Landroid/app/ActivityThread$ActivityClientRecord;ZZ)Landroid/os/Bundle;
    .locals 10
    .parameter "r"
    .parameter "finished"
    .parameter "saveState"

    .prologue
    const/4 v9, 0x1

    const/4 v3, 0x0

    .line 2807
    iget-boolean v6, p1, Landroid/app/ActivityThread$ActivityClientRecord;->paused:Z

    if-eqz v6, :cond_2

    .line 2808
    iget-object v6, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v6, v6, Landroid/app/Activity;->mFinished:Z

    if-eqz v6, :cond_1

    .line 2812
    const/4 v4, 0x0

    .line 2864
    :cond_0
    return-object v4

    .line 2814
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Performing pause of activity that is not resumed: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 2817
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v6, "ActivityThread"

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2819
    .end local v0           #e:Ljava/lang/RuntimeException;
    :cond_2
    const/4 v4, 0x0

    .line 2820
    .local v4, state:Landroid/os/Bundle;
    if-eqz p2, :cond_3

    .line 2821
    iget-object v6, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iput-boolean v9, v6, Landroid/app/Activity;->mFinished:Z

    .line 2825
    :cond_3
    :try_start_0
    iget-object v6, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v6, v6, Landroid/app/Activity;->mFinished:Z

    if-nez v6, :cond_4

    if-eqz p3, :cond_4

    .line 2826
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V
    :try_end_0
    .catch Landroid/app/SuperNotCalledException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 2827
    .end local v4           #state:Landroid/os/Bundle;
    .local v5, state:Landroid/os/Bundle;
    const/4 v6, 0x0

    :try_start_1
    invoke-virtual {v5, v6}, Landroid/os/Bundle;->setAllowFds(Z)Z

    .line 2828
    iget-object v6, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v7, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v6, v7, v5}, Landroid/app/Instrumentation;->callActivityOnSaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 2829
    iput-object v5, p1, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;
    :try_end_1
    .catch Landroid/app/SuperNotCalledException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-object v4, v5

    .line 2832
    .end local v5           #state:Landroid/os/Bundle;
    .restart local v4       #state:Landroid/os/Bundle;
    :cond_4
    :try_start_2
    iget-object v6, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    const/4 v7, 0x0

    iput-boolean v7, v6, Landroid/app/Activity;->mCalled:Z

    .line 2833
    iget-object v6, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v7, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v6, v7}, Landroid/app/Instrumentation;->callActivityOnPause(Landroid/app/Activity;)V

    .line 2834
    const/16 v6, 0x7545

    iget-object v7, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 2835
    iget-object v6, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v6, v6, Landroid/app/Activity;->mCalled:Z

    if-nez v6, :cond_5

    .line 2836
    new-instance v6, Landroid/app/SuperNotCalledException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Activity "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p1, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v8}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " did not call through to super.onPause()"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_2
    .catch Landroid/app/SuperNotCalledException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 2841
    :catch_0
    move-exception v0

    .line 2842
    .local v0, e:Landroid/app/SuperNotCalledException;
    :goto_0
    throw v0

    .line 2844
    .end local v0           #e:Landroid/app/SuperNotCalledException;
    :catch_1
    move-exception v0

    .line 2845
    .local v0, e:Ljava/lang/Exception;
    :goto_1
    iget-object v6, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v7, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v6, v7, v0}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 2846
    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to pause activity "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p1, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v8}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 2852
    .end local v0           #e:Ljava/lang/Exception;
    :cond_5
    iput-boolean v9, p1, Landroid/app/ActivityThread$ActivityClientRecord;->paused:Z

    .line 2856
    iget-object v7, p0, Landroid/app/ActivityThread;->mOnPauseListeners:Ljava/util/HashMap;

    monitor-enter v7

    .line 2857
    :try_start_3
    iget-object v6, p0, Landroid/app/ActivityThread;->mOnPauseListeners:Ljava/util/HashMap;

    iget-object v8, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 2858
    .local v2, listeners:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/OnActivityPausedListener;>;"
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2859
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 2860
    .local v3, size:I
    :cond_6
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    if-ge v1, v3, :cond_0

    .line 2861
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/OnActivityPausedListener;

    iget-object v7, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-interface {v6, v7}, Landroid/app/OnActivityPausedListener;->onPaused(Landroid/app/Activity;)V

    .line 2860
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2858
    .end local v1           #i:I
    .end local v2           #listeners:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/OnActivityPausedListener;>;"
    .end local v3           #size:I
    :catchall_0
    move-exception v6

    :try_start_4
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v6

    .line 2844
    .end local v4           #state:Landroid/os/Bundle;
    .restart local v5       #state:Landroid/os/Bundle;
    :catch_2
    move-exception v0

    move-object v4, v5

    .end local v5           #state:Landroid/os/Bundle;
    .restart local v4       #state:Landroid/os/Bundle;
    goto :goto_1

    .line 2841
    .end local v4           #state:Landroid/os/Bundle;
    .restart local v5       #state:Landroid/os/Bundle;
    :catch_3
    move-exception v0

    move-object v4, v5

    .end local v5           #state:Landroid/os/Bundle;
    .restart local v4       #state:Landroid/os/Bundle;
    goto :goto_0
.end method

.method final performPauseActivity(Landroid/os/IBinder;ZZ)Landroid/os/Bundle;
    .locals 2
    .parameter "token"
    .parameter "finished"
    .parameter "saveState"

    .prologue
    .line 2801
    iget-object v1, p0, Landroid/app/ActivityThread;->mActivities:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 2802
    .local v0, r:Landroid/app/ActivityThread$ActivityClientRecord;
    if-eqz v0, :cond_0

    invoke-virtual {p0, v0, p2, p3}, Landroid/app/ActivityThread;->performPauseActivity(Landroid/app/ActivityThread$ActivityClientRecord;ZZ)Landroid/os/Bundle;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method final performRestartActivity(Landroid/os/IBinder;)V
    .locals 2
    .parameter "token"

    .prologue
    .line 3049
    iget-object v1, p0, Landroid/app/ActivityThread;->mActivities:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 3050
    .local v0, r:Landroid/app/ActivityThread$ActivityClientRecord;
    iget-boolean v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->stopped:Z

    if-eqz v1, :cond_0

    .line 3051
    iget-object v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->performRestart()V

    .line 3052
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->stopped:Z

    .line 3054
    :cond_0
    return-void
.end method

.method public final performResumeActivity(Landroid/os/IBinder;Z)Landroid/app/ActivityThread$ActivityClientRecord;
    .locals 5
    .parameter "token"
    .parameter "clearHide"

    .prologue
    const/4 v3, 0x0

    .line 2556
    iget-object v2, p0, Landroid/app/ActivityThread;->mActivities:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 2559
    .local v1, r:Landroid/app/ActivityThread$ActivityClientRecord;
    if-eqz v1, :cond_3

    iget-object v2, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v2, v2, Landroid/app/Activity;->mFinished:Z

    if-nez v2, :cond_3

    .line 2560
    if-eqz p2, :cond_0

    .line 2561
    iput-boolean v3, v1, Landroid/app/ActivityThread$ActivityClientRecord;->hideForNow:Z

    .line 2562
    iget-object v2, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iput-boolean v3, v2, Landroid/app/Activity;->mStartedActivity:Z

    .line 2565
    :cond_0
    :try_start_0
    iget-object v2, v1, Landroid/app/ActivityThread$ActivityClientRecord;->pendingIntents:Ljava/util/List;

    if-eqz v2, :cond_1

    .line 2566
    iget-object v2, v1, Landroid/app/ActivityThread$ActivityClientRecord;->pendingIntents:Ljava/util/List;

    invoke-direct {p0, v1, v2}, Landroid/app/ActivityThread;->deliverNewIntents(Landroid/app/ActivityThread$ActivityClientRecord;Ljava/util/List;)V

    .line 2567
    const/4 v2, 0x0

    iput-object v2, v1, Landroid/app/ActivityThread$ActivityClientRecord;->pendingIntents:Ljava/util/List;

    .line 2569
    :cond_1
    iget-object v2, v1, Landroid/app/ActivityThread$ActivityClientRecord;->pendingResults:Ljava/util/List;

    if-eqz v2, :cond_2

    .line 2570
    iget-object v2, v1, Landroid/app/ActivityThread$ActivityClientRecord;->pendingResults:Ljava/util/List;

    invoke-direct {p0, v1, v2}, Landroid/app/ActivityThread;->deliverResults(Landroid/app/ActivityThread$ActivityClientRecord;Ljava/util/List;)V

    .line 2571
    const/4 v2, 0x0

    iput-object v2, v1, Landroid/app/ActivityThread$ActivityClientRecord;->pendingResults:Ljava/util/List;

    .line 2573
    :cond_2
    iget-object v2, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->performResume()V

    .line 2575
    const/16 v2, 0x7546

    iget-object v3, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 2578
    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/app/ActivityThread$ActivityClientRecord;->paused:Z

    .line 2579
    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/app/ActivityThread$ActivityClientRecord;->stopped:Z

    .line 2580
    const/4 v2, 0x0

    iput-object v2, v1, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2590
    :cond_3
    return-object v1

    .line 2581
    :catch_0
    move-exception v0

    .line 2582
    .local v0, e:Ljava/lang/Exception;
    iget-object v2, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v3, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v2, v3, v0}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 2583
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to resume activity "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method final performStopActivity(Landroid/os/IBinder;Z)V
    .locals 3
    .parameter "token"
    .parameter "saveState"

    .prologue
    .line 2868
    iget-object v1, p0, Landroid/app/ActivityThread;->mActivities:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 2869
    .local v0, r:Landroid/app/ActivityThread$ActivityClientRecord;
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2, p2}, Landroid/app/ActivityThread;->performStopActivityInner(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/app/ActivityThread$StopInfo;ZZ)V

    .line 2870
    return-void
.end method

.method final performUserLeavingActivity(Landroid/app/ActivityThread$ActivityClientRecord;)V
    .locals 2
    .parameter "r"

    .prologue
    .line 2796
    iget-object v0, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Instrumentation;->callActivityOnUserLeaving(Landroid/app/Activity;)V

    .line 2797
    return-void
.end method

.method public registerOnActivityPausedListener(Landroid/app/Activity;Landroid/app/OnActivityPausedListener;)V
    .locals 3
    .parameter "activity"
    .parameter "listener"

    .prologue
    .line 1853
    iget-object v2, p0, Landroid/app/ActivityThread;->mOnPauseListeners:Ljava/util/HashMap;

    monitor-enter v2

    .line 1854
    :try_start_0
    iget-object v1, p0, Landroid/app/ActivityThread;->mOnPauseListeners:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 1855
    .local v0, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/OnActivityPausedListener;>;"
    if-nez v0, :cond_0

    .line 1856
    new-instance v0, Ljava/util/ArrayList;

    .end local v0           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/OnActivityPausedListener;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1857
    .restart local v0       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/OnActivityPausedListener;>;"
    iget-object v1, p0, Landroid/app/ActivityThread;->mOnPauseListeners:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1859
    :cond_0
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1860
    monitor-exit v2

    .line 1861
    return-void

    .line 1860
    .end local v0           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/OnActivityPausedListener;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final releaseProvider(Landroid/content/IContentProvider;Z)Z
    .locals 10
    .parameter "provider"
    .parameter "stable"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 4380
    if-nez p1, :cond_0

    .line 4464
    :goto_0
    return v5

    .line 4384
    :cond_0
    invoke-interface {p1}, Landroid/content/IContentProvider;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 4385
    .local v0, jBinder:Landroid/os/IBinder;
    iget-object v6, p0, Landroid/app/ActivityThread;->mProviderMap:Ljava/util/HashMap;

    monitor-enter v6

    .line 4386
    :try_start_0
    iget-object v7, p0, Landroid/app/ActivityThread;->mProviderRefCountMap:Ljava/util/HashMap;

    invoke-virtual {v7, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityThread$ProviderRefCount;

    .line 4387
    .local v3, prc:Landroid/app/ActivityThread$ProviderRefCount;
    if-nez v3, :cond_1

    .line 4389
    monitor-exit v6

    goto :goto_0

    .line 4465
    .end local v3           #prc:Landroid/app/ActivityThread$ProviderRefCount;
    :catchall_0
    move-exception v4

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 4392
    .restart local v3       #prc:Landroid/app/ActivityThread$ProviderRefCount;
    :cond_1
    const/4 v1, 0x0

    .line 4393
    .local v1, lastRef:Z
    if-eqz p2, :cond_7

    .line 4394
    :try_start_1
    iget v7, v3, Landroid/app/ActivityThread$ProviderRefCount;->stableCount:I

    if-nez v7, :cond_2

    .line 4397
    monitor-exit v6

    goto :goto_0

    .line 4399
    :cond_2
    iget v7, v3, Landroid/app/ActivityThread$ProviderRefCount;->stableCount:I

    add-int/lit8 v7, v7, -0x1

    iput v7, v3, Landroid/app/ActivityThread$ProviderRefCount;->stableCount:I

    .line 4400
    iget v7, v3, Landroid/app/ActivityThread$ProviderRefCount;->stableCount:I

    if-nez v7, :cond_4

    .line 4407
    iget v7, v3, Landroid/app/ActivityThread$ProviderRefCount;->unstableCount:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v7, :cond_6

    move v1, v4

    .line 4413
    :goto_1
    :try_start_2
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v7

    iget-object v8, v3, Landroid/app/ActivityThread$ProviderRefCount;->holder:Landroid/app/IActivityManager$ContentProviderHolder;

    iget-object v8, v8, Landroid/app/IActivityManager$ContentProviderHolder;->connection:Landroid/os/IBinder;

    const/4 v9, -0x1

    if-eqz v1, :cond_3

    move v5, v4

    :cond_3
    invoke-interface {v7, v8, v9, v5}, Landroid/app/IActivityManager;->refContentProvider(Landroid/os/IBinder;II)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 4446
    :cond_4
    :goto_2
    if-eqz v1, :cond_5

    .line 4447
    :try_start_3
    iget-boolean v5, v3, Landroid/app/ActivityThread$ProviderRefCount;->removePending:Z

    if-nez v5, :cond_a

    .line 4457
    const/4 v5, 0x1

    iput-boolean v5, v3, Landroid/app/ActivityThread$ProviderRefCount;->removePending:Z

    .line 4458
    iget-object v5, p0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    const/16 v7, 0x83

    invoke-virtual {v5, v7, v3}, Landroid/app/ActivityThread$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 4459
    .local v2, msg:Landroid/os/Message;
    iget-object v5, p0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    invoke-virtual {v5, v2}, Landroid/app/ActivityThread$H;->sendMessage(Landroid/os/Message;)Z

    .line 4464
    .end local v2           #msg:Landroid/os/Message;
    :cond_5
    :goto_3
    monitor-exit v6

    move v5, v4

    goto :goto_0

    :cond_6
    move v1, v5

    .line 4407
    goto :goto_1

    .line 4420
    :cond_7
    iget v7, v3, Landroid/app/ActivityThread$ProviderRefCount;->unstableCount:I

    if-nez v7, :cond_8

    .line 4423
    monitor-exit v6

    goto :goto_0

    .line 4425
    :cond_8
    iget v7, v3, Landroid/app/ActivityThread$ProviderRefCount;->unstableCount:I

    add-int/lit8 v7, v7, -0x1

    iput v7, v3, Landroid/app/ActivityThread$ProviderRefCount;->unstableCount:I

    .line 4426
    iget v7, v3, Landroid/app/ActivityThread$ProviderRefCount;->unstableCount:I

    if-nez v7, :cond_4

    .line 4430
    iget v7, v3, Landroid/app/ActivityThread$ProviderRefCount;->stableCount:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v7, :cond_9

    move v1, v4

    .line 4431
    :goto_4
    if-nez v1, :cond_4

    .line 4437
    :try_start_4
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    iget-object v7, v3, Landroid/app/ActivityThread$ProviderRefCount;->holder:Landroid/app/IActivityManager$ContentProviderHolder;

    iget-object v7, v7, Landroid/app/IActivityManager$ContentProviderHolder;->connection:Landroid/os/IBinder;

    const/4 v8, 0x0

    const/4 v9, -0x1

    invoke-interface {v5, v7, v8, v9}, Landroid/app/IActivityManager;->refContentProvider(Landroid/os/IBinder;II)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_2

    .line 4439
    :catch_0
    move-exception v5

    goto :goto_2

    :cond_9
    move v1, v5

    .line 4430
    goto :goto_4

    .line 4461
    :cond_a
    :try_start_5
    const-string v5, "ActivityThread"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Duplicate remove pending of provider "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v3, Landroid/app/ActivityThread$ProviderRefCount;->holder:Landroid/app/IActivityManager$ContentProviderHolder;

    iget-object v8, v8, Landroid/app/IActivityManager$ContentProviderHolder;->info:Landroid/content/pm/ProviderInfo;

    iget-object v8, v8, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3

    .line 4415
    :catch_1
    move-exception v5

    goto :goto_2
.end method

.method public final requestRelaunchActivity(Landroid/os/IBinder;Ljava/util/List;Ljava/util/List;IZLandroid/content/res/Configuration;Z)V
    .locals 7
    .parameter "token"
    .parameter
    .parameter
    .parameter "configChanges"
    .parameter "notResumed"
    .parameter "config"
    .parameter "fromServer"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            "Ljava/util/List",
            "<",
            "Landroid/app/ResultInfo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/content/Intent;",
            ">;IZ",
            "Landroid/content/res/Configuration;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 3367
    .local p2, pendingResults:Ljava/util/List;,"Ljava/util/List<Landroid/app/ResultInfo;>;"
    .local p3, pendingNewIntents:Ljava/util/List;,"Ljava/util/List<Landroid/content/Intent;>;"
    const/4 v3, 0x0

    .line 3369
    .local v3, target:Landroid/app/ActivityThread$ActivityClientRecord;
    iget-object v6, p0, Landroid/app/ActivityThread;->mPackages:Ljava/util/HashMap;

    monitor-enter v6

    .line 3370
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    :try_start_0
    iget-object v5, p0, Landroid/app/ActivityThread;->mRelaunchingActivities:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_9

    .line 3371
    iget-object v5, p0, Landroid/app/ActivityThread;->mRelaunchingActivities:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 3372
    .local v2, r:Landroid/app/ActivityThread$ActivityClientRecord;
    iget-object v5, v2, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    if-ne v5, p1, :cond_7

    .line 3373
    move-object v3, v2

    .line 3374
    if-eqz p2, :cond_0

    .line 3375
    iget-object v5, v2, Landroid/app/ActivityThread$ActivityClientRecord;->pendingResults:Ljava/util/List;

    if-eqz v5, :cond_5

    .line 3376
    iget-object v5, v2, Landroid/app/ActivityThread$ActivityClientRecord;->pendingResults:Ljava/util/List;

    invoke-interface {v5, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 3381
    :cond_0
    :goto_1
    if-eqz p3, :cond_9

    .line 3382
    iget-object v5, v2, Landroid/app/ActivityThread$ActivityClientRecord;->pendingIntents:Ljava/util/List;

    if-eqz v5, :cond_6

    .line 3383
    iget-object v5, v2, Landroid/app/ActivityThread$ActivityClientRecord;->pendingIntents:Ljava/util/List;

    invoke-interface {v5, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v4, v3

    .line 3392
    .end local v2           #r:Landroid/app/ActivityThread$ActivityClientRecord;
    .end local v3           #target:Landroid/app/ActivityThread$ActivityClientRecord;
    .local v4, target:Landroid/app/ActivityThread$ActivityClientRecord;
    :goto_2
    if-nez v4, :cond_8

    .line 3393
    :try_start_1
    new-instance v3, Landroid/app/ActivityThread$ActivityClientRecord;

    invoke-direct {v3}, Landroid/app/ActivityThread$ActivityClientRecord;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3394
    .end local v4           #target:Landroid/app/ActivityThread$ActivityClientRecord;
    .restart local v3       #target:Landroid/app/ActivityThread$ActivityClientRecord;
    :try_start_2
    iput-object p1, v3, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    .line 3395
    iput-object p2, v3, Landroid/app/ActivityThread$ActivityClientRecord;->pendingResults:Ljava/util/List;

    .line 3396
    iput-object p3, v3, Landroid/app/ActivityThread$ActivityClientRecord;->pendingIntents:Ljava/util/List;

    .line 3397
    if-nez p7, :cond_2

    .line 3398
    iget-object v5, p0, Landroid/app/ActivityThread;->mActivities:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 3399
    .local v0, existing:Landroid/app/ActivityThread$ActivityClientRecord;
    if-eqz v0, :cond_1

    .line 3400
    iget-boolean v5, v0, Landroid/app/ActivityThread$ActivityClientRecord;->paused:Z

    iput-boolean v5, v3, Landroid/app/ActivityThread$ActivityClientRecord;->startsNotResumed:Z

    .line 3402
    :cond_1
    const/4 v5, 0x1

    iput-boolean v5, v3, Landroid/app/ActivityThread$ActivityClientRecord;->onlyLocalRequest:Z

    .line 3404
    .end local v0           #existing:Landroid/app/ActivityThread$ActivityClientRecord;
    :cond_2
    iget-object v5, p0, Landroid/app/ActivityThread;->mRelaunchingActivities:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3405
    const/16 v5, 0x7e

    invoke-direct {p0, v5, v3}, Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;)V

    .line 3408
    :goto_3
    if-eqz p7, :cond_3

    .line 3409
    iput-boolean p5, v3, Landroid/app/ActivityThread$ActivityClientRecord;->startsNotResumed:Z

    .line 3410
    const/4 v5, 0x0

    iput-boolean v5, v3, Landroid/app/ActivityThread$ActivityClientRecord;->onlyLocalRequest:Z

    .line 3412
    :cond_3
    if-eqz p6, :cond_4

    .line 3413
    iput-object p6, v3, Landroid/app/ActivityThread$ActivityClientRecord;->createdConfig:Landroid/content/res/Configuration;

    .line 3415
    :cond_4
    iget v5, v3, Landroid/app/ActivityThread$ActivityClientRecord;->pendingConfigChanges:I

    or-int/2addr v5, p4

    iput v5, v3, Landroid/app/ActivityThread$ActivityClientRecord;->pendingConfigChanges:I

    .line 3416
    monitor-exit v6

    .line 3417
    return-void

    .line 3378
    .restart local v2       #r:Landroid/app/ActivityThread$ActivityClientRecord;
    :cond_5
    iput-object p2, v2, Landroid/app/ActivityThread$ActivityClientRecord;->pendingResults:Ljava/util/List;

    goto :goto_1

    .line 3416
    .end local v2           #r:Landroid/app/ActivityThread$ActivityClientRecord;
    :catchall_0
    move-exception v5

    :goto_4
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .line 3385
    .restart local v2       #r:Landroid/app/ActivityThread$ActivityClientRecord;
    :cond_6
    :try_start_3
    iput-object p3, v2, Landroid/app/ActivityThread$ActivityClientRecord;->pendingIntents:Ljava/util/List;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v4, v3

    .end local v3           #target:Landroid/app/ActivityThread$ActivityClientRecord;
    .restart local v4       #target:Landroid/app/ActivityThread$ActivityClientRecord;
    goto :goto_2

    .line 3370
    .end local v4           #target:Landroid/app/ActivityThread$ActivityClientRecord;
    .restart local v3       #target:Landroid/app/ActivityThread$ActivityClientRecord;
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3416
    .end local v2           #r:Landroid/app/ActivityThread$ActivityClientRecord;
    .end local v3           #target:Landroid/app/ActivityThread$ActivityClientRecord;
    .restart local v4       #target:Landroid/app/ActivityThread$ActivityClientRecord;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4           #target:Landroid/app/ActivityThread$ActivityClientRecord;
    .restart local v3       #target:Landroid/app/ActivityThread$ActivityClientRecord;
    goto :goto_4

    .end local v3           #target:Landroid/app/ActivityThread$ActivityClientRecord;
    .restart local v4       #target:Landroid/app/ActivityThread$ActivityClientRecord;
    :cond_8
    move-object v3, v4

    .end local v4           #target:Landroid/app/ActivityThread$ActivityClientRecord;
    .restart local v3       #target:Landroid/app/ActivityThread$ActivityClientRecord;
    goto :goto_3

    :cond_9
    move-object v4, v3

    .end local v3           #target:Landroid/app/ActivityThread$ActivityClientRecord;
    .restart local v4       #target:Landroid/app/ActivityThread$ActivityClientRecord;
    goto :goto_2
.end method

.method public final resolveActivityInfo(Landroid/content/Intent;)Landroid/content/pm/ActivityInfo;
    .locals 3
    .parameter "intent"

    .prologue
    .line 1874
    iget-object v1, p0, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    invoke-virtual {v1}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x400

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 1876
    .local v0, aInfo:Landroid/content/pm/ActivityInfo;
    if-nez v0, :cond_0

    .line 1878
    const/4 v1, -0x2

    invoke-static {v1, p1}, Landroid/app/Instrumentation;->checkStartActivityResult(ILjava/lang/Object;)V

    .line 1881
    :cond_0
    return-object v0
.end method

.method final scheduleContextCleanup(Landroid/app/ContextImpl;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "who"
    .parameter "what"

    .prologue
    .line 1951
    new-instance v0, Landroid/app/ActivityThread$ContextCleanupInfo;

    invoke-direct {v0}, Landroid/app/ActivityThread$ContextCleanupInfo;-><init>()V

    .line 1952
    .local v0, cci:Landroid/app/ActivityThread$ContextCleanupInfo;
    iput-object p1, v0, Landroid/app/ActivityThread$ContextCleanupInfo;->context:Landroid/app/ContextImpl;

    .line 1953
    iput-object p2, v0, Landroid/app/ActivityThread$ContextCleanupInfo;->who:Ljava/lang/String;

    .line 1954
    iput-object p3, v0, Landroid/app/ActivityThread$ContextCleanupInfo;->what:Ljava/lang/String;

    .line 1955
    const/16 v1, 0x77

    invoke-direct {p0, v1, v0}, Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;)V

    .line 1956
    return-void
.end method

.method scheduleGcIdler()V
    .locals 2

    .prologue
    .line 1825
    iget-boolean v0, p0, Landroid/app/ActivityThread;->mGcIdlerScheduled:Z

    if-nez v0, :cond_0

    .line 1826
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/ActivityThread;->mGcIdlerScheduled:Z

    .line 1827
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ActivityThread;->mGcIdler:Landroid/app/ActivityThread$GcIdler;

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 1829
    :cond_0
    iget-object v0, p0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    const/16 v1, 0x78

    invoke-virtual {v0, v1}, Landroid/app/ActivityThread$H;->removeMessages(I)V

    .line 1830
    return-void
.end method

.method public final sendActivityResult(Landroid/os/IBinder;Ljava/lang/String;IILandroid/content/Intent;)V
    .locals 2
    .parameter "token"
    .parameter "id"
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 1920
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1921
    .local v0, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/ResultInfo;>;"
    new-instance v1, Landroid/app/ResultInfo;

    invoke-direct {v1, p2, p3, p4, p5}, Landroid/app/ResultInfo;-><init>(Ljava/lang/String;IILandroid/content/Intent;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1922
    iget-object v1, p0, Landroid/app/ActivityThread;->mAppThread:Landroid/app/ActivityThread$ApplicationThread;

    invoke-virtual {v1, p1, v0}, Landroid/app/ActivityThread$ApplicationThread;->scheduleSendResult(Landroid/os/IBinder;Ljava/util/List;)V

    .line 1923
    return-void
.end method

.method public final startActivityNow(Landroid/app/Activity;Ljava/lang/String;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroid/os/IBinder;Landroid/os/Bundle;Landroid/app/Activity$NonConfigurationInstances;)Landroid/app/Activity;
    .locals 2
    .parameter "parent"
    .parameter "id"
    .parameter "intent"
    .parameter "activityInfo"
    .parameter "token"
    .parameter "state"
    .parameter "lastNonConfigurationInstances"

    .prologue
    .line 1887
    new-instance v0, Landroid/app/ActivityThread$ActivityClientRecord;

    invoke-direct {v0}, Landroid/app/ActivityThread$ActivityClientRecord;-><init>()V

    .line 1888
    .local v0, r:Landroid/app/ActivityThread$ActivityClientRecord;
    iput-object p5, v0, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    .line 1889
    const/4 v1, 0x0

    iput v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->ident:I

    .line 1890
    iput-object p3, v0, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    .line 1891
    iput-object p6, v0, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    .line 1892
    iput-object p1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->parent:Landroid/app/Activity;

    .line 1893
    iput-object p2, v0, Landroid/app/ActivityThread$ActivityClientRecord;->embeddedID:Ljava/lang/String;

    .line 1894
    iput-object p4, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 1895
    iput-object p7, v0, Landroid/app/ActivityThread$ActivityClientRecord;->lastNonConfigurationInstances:Landroid/app/Activity$NonConfigurationInstances;

    .line 1908
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/app/ActivityThread;->performLaunchActivity(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/content/Intent;)Landroid/app/Activity;

    move-result-object v1

    return-object v1
.end method

.method public unregisterOnActivityPausedListener(Landroid/app/Activity;Landroid/app/OnActivityPausedListener;)V
    .locals 3
    .parameter "activity"
    .parameter "listener"

    .prologue
    .line 1865
    iget-object v2, p0, Landroid/app/ActivityThread;->mOnPauseListeners:Ljava/util/HashMap;

    monitor-enter v2

    .line 1866
    :try_start_0
    iget-object v1, p0, Landroid/app/ActivityThread;->mOnPauseListeners:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 1867
    .local v0, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/OnActivityPausedListener;>;"
    if-eqz v0, :cond_0

    .line 1868
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1870
    :cond_0
    monitor-exit v2

    .line 1871
    return-void

    .line 1870
    .end local v0           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/OnActivityPausedListener;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method unscheduleGcIdler()V
    .locals 2

    .prologue
    .line 1833
    iget-boolean v0, p0, Landroid/app/ActivityThread;->mGcIdlerScheduled:Z

    if-eqz v0, :cond_0

    .line 1834
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/ActivityThread;->mGcIdlerScheduled:Z

    .line 1835
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ActivityThread;->mGcIdler:Landroid/app/ActivityThread$GcIdler;

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->removeIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 1837
    :cond_0
    iget-object v0, p0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    const/16 v1, 0x78

    invoke-virtual {v0, v1}, Landroid/app/ActivityThread$H;->removeMessages(I)V

    .line 1838
    return-void
.end method
