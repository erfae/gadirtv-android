.class final Lcom/google/android/play/core/missingsplits/zzb;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.3"

# interfaces
.implements Lcom/google/android/play/core/missingsplits/MissingSplitsManager;


# static fields
.field private static final zza:Lcom/google/android/play/core/internal/zzag;


# instance fields
.field private final zzb:Landroid/content/Context;

.field private final zzc:Ljava/lang/Runtime;

.field private final zzd:Lcom/google/android/play/core/missingsplits/zza;

.field private final zze:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/google/android/play/core/internal/zzag;

    const-string v1, "MissingSplitsManagerImpl"

    invoke-direct {v0, v1}, Lcom/google/android/play/core/internal/zzag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/play/core/missingsplits/zzb;->zza:Lcom/google/android/play/core/internal/zzag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/Runtime;Lcom/google/android/play/core/missingsplits/zza;Ljava/util/concurrent/atomic/AtomicReference;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/missingsplits/zzb;->zzb:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/play/core/missingsplits/zzb;->zzc:Ljava/lang/Runtime;

    iput-object p3, p0, Lcom/google/android/play/core/missingsplits/zzb;->zzd:Lcom/google/android/play/core/missingsplits/zza;

    iput-object p4, p0, Lcom/google/android/play/core/missingsplits/zzb;->zze:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method private final zza()Ljava/util/List;
    .registers 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/missingsplits/zzb;->zzb:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 2
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getAppTasks()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_11

    return-object v0

    .line 3
    :cond_11
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final disableAppIfMissingRequiredSplits()Z
    .registers 8

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/missingsplits/zzb;->zze:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/play/core/missingsplits/zzb;->zze:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_9c

    iget-object v1, p0, Lcom/google/android/play/core/missingsplits/zzb;->zze:Ljava/util/concurrent/atomic/AtomicReference;

    .line 3
    iget-object v4, p0, Lcom/google/android/play/core/missingsplits/zzb;->zzb:Landroid/content/Context;

    .line 4
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_1b6

    :try_start_17
    iget-object v5, p0, Lcom/google/android/play/core/missingsplits/zzb;->zzb:Landroid/content/Context;

    .line 5
    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x80

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    if-eqz v4, :cond_81

    .line 6
    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v4, :cond_81

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v6, "com.android.vending.splits.required"

    .line 7
    invoke-virtual {v4, v6}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_35
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_17 .. :try_end_35} :catch_83
    .catchall {:try_start_17 .. :try_end_35} :catchall_1b6

    if-eqz v4, :cond_81

    .line 8
    :try_start_37
    iget-object v4, p0, Lcom/google/android/play/core/missingsplits/zzb;->zzb:Landroid/content/Context;

    .line 9
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/play/core/missingsplits/zzb;->zzb:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    new-instance v5, Ljava/util/HashSet;

    .line 10
    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    if-eqz v4, :cond_6b

    .line 11
    iget-object v4, v4, Landroid/content/pm/PackageInfo;->splitNames:[Ljava/lang/String;

    if-eqz v4, :cond_6b

    .line 12
    invoke-static {v5, v4}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z
    :try_end_55
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_37 .. :try_end_55} :catch_56
    .catchall {:try_start_37 .. :try_end_55} :catchall_1b6

    goto :goto_6b

    .line 13
    :catch_56
    :try_start_56
    sget-object v4, Lcom/google/android/play/core/missingsplits/zzb;->zza:Lcom/google/android/play/core/internal/zzag;

    new-array v5, v2, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/google/android/play/core/missingsplits/zzb;->zzb:Landroid/content/Context;

    .line 14
    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    const-string v6, "App \'%s\' is not found in PackageManager"

    invoke-virtual {v4, v6, v5}, Lcom/google/android/play/core/internal/zzag;->zze(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 15
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v5

    .line 16
    :cond_6b
    :goto_6b
    invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_7f

    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v4

    if-ne v4, v2, :cond_81

    const-string v4, ""

    invoke-interface {v5, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_81

    :cond_7f
    const/4 v4, 0x1

    goto :goto_95

    :cond_81
    :goto_81
    const/4 v4, 0x0

    goto :goto_95

    .line 17
    :catch_83
    sget-object v4, Lcom/google/android/play/core/missingsplits/zzb;->zza:Lcom/google/android/play/core/internal/zzag;

    new-array v5, v2, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/google/android/play/core/missingsplits/zzb;->zzb:Landroid/content/Context;

    .line 18
    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    const-string v6, "App \'%s\' is not found in the PackageManager"

    invoke-virtual {v4, v6, v5}, Lcom/google/android/play/core/internal/zzag;->zze(Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_81

    .line 19
    :goto_95
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :cond_9c
    iget-object v1, p0, Lcom/google/android/play/core/missingsplits/zzb;->zze:Ljava/util/concurrent/atomic/AtomicReference;

    .line 20
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    monitor-exit v0
    :try_end_a9
    .catchall {:try_start_56 .. :try_end_a9} :catchall_1b6

    if-eqz v1, :cond_1a3

    .line 21
    invoke-direct {p0}, Lcom/google/android/play/core/missingsplits/zzb;->zza()Ljava/util/List;

    move-result-object v0

    .line 22
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_b3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_f5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$AppTask;

    .line 23
    invoke-virtual {v1}, Landroid/app/ActivityManager$AppTask;->getTaskInfo()Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object v4

    if-eqz v4, :cond_b3

    .line 24
    invoke-virtual {v1}, Landroid/app/ActivityManager$AppTask;->getTaskInfo()Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    if-eqz v4, :cond_b3

    .line 25
    invoke-virtual {v1}, Landroid/app/ActivityManager$AppTask;->getTaskInfo()Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    if-eqz v4, :cond_b3

    .line 26
    invoke-virtual {v1}, Landroid/app/ActivityManager$AppTask;->getTaskInfo()Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    const-class v4, Lcom/google/android/play/core/missingsplits/PlayCoreMissingSplitsActivity;

    .line 27
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b3

    goto/16 :goto_1a2

    .line 28
    :cond_f5
    invoke-direct {p0}, Lcom/google/android/play/core/missingsplits/zzb;->zza()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_fd
    :goto_fd
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_157

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$AppTask;

    .line 29
    invoke-virtual {v1}, Landroid/app/ActivityManager$AppTask;->getTaskInfo()Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object v1

    if-eqz v1, :cond_fd

    .line 30
    iget-object v4, v1, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    if-eqz v4, :cond_fd

    .line 31
    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    if-eqz v4, :cond_fd

    iget-object v1, v1, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    .line 32
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 33
    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    .line 34
    :try_start_123
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1
    :try_end_127
    .catch Ljava/lang/ClassNotFoundException; {:try_start_123 .. :try_end_127} :catch_13d

    :goto_127
    if-eqz v1, :cond_fd

    const-class v4, Landroid/app/Activity;

    .line 35
    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_133

    :goto_131
    const/4 v0, 0x1

    goto :goto_158

    .line 36
    :cond_133
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v4

    if-eq v4, v1, :cond_13b

    move-object v1, v4

    goto :goto_127

    :cond_13b
    const/4 v1, 0x0

    goto :goto_127

    .line 37
    :catch_13d
    sget-object v5, Lcom/google/android/play/core/missingsplits/zzb;->zza:Lcom/google/android/play/core/internal/zzag;

    new-array v6, v2, [Ljava/lang/Object;

    aput-object v4, v6, v3

    const-string v4, "ClassNotFoundException when scanning class hierarchy of \'%s\'"

    .line 38
    invoke-virtual {v5, v4, v6}, Lcom/google/android/play/core/internal/zzag;->zze(Ljava/lang/String;[Ljava/lang/Object;)I

    :try_start_148
    iget-object v4, p0, Lcom/google/android/play/core/missingsplits/zzb;->zzb:Landroid/content/Context;

    .line 39
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v1, v3}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v1
    :try_end_152
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_148 .. :try_end_152} :catch_155

    if-eqz v1, :cond_fd

    goto :goto_131

    :catch_155
    nop

    goto :goto_fd

    :cond_157
    const/4 v0, 0x0

    .line 40
    :goto_158
    iget-object v1, p0, Lcom/google/android/play/core/missingsplits/zzb;->zzd:Lcom/google/android/play/core/missingsplits/zza;

    .line 41
    invoke-virtual {v1}, Lcom/google/android/play/core/missingsplits/zza;->zza()V

    .line 42
    invoke-direct {p0}, Lcom/google/android/play/core/missingsplits/zzb;->zza()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_165
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_175

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$AppTask;

    .line 43
    invoke-virtual {v4}, Landroid/app/ActivityManager$AppTask;->finishAndRemoveTask()V

    goto :goto_165

    :cond_175
    if-eqz v0, :cond_19d

    iget-object v0, p0, Lcom/google/android/play/core/missingsplits/zzb;->zzb:Landroid/content/Context;

    .line 44
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/content/ComponentName;

    iget-object v4, p0, Lcom/google/android/play/core/missingsplits/zzb;->zzb:Landroid/content/Context;

    const-class v5, Lcom/google/android/play/core/missingsplits/PlayCoreMissingSplitsActivity;

    invoke-direct {v1, v4, v5}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 45
    invoke-virtual {v0, v1, v2, v2}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/android/play/core/missingsplits/zzb;->zzb:Landroid/content/Context;

    const-class v4, Lcom/google/android/play/core/missingsplits/PlayCoreMissingSplitsActivity;

    .line 46
    invoke-direct {v0, v1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x34c00000

    .line 47
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/play/core/missingsplits/zzb;->zzb:Landroid/content/Context;

    .line 48
    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_19d
    iget-object v0, p0, Lcom/google/android/play/core/missingsplits/zzb;->zzc:Ljava/lang/Runtime;

    .line 49
    invoke-virtual {v0, v3}, Ljava/lang/Runtime;->exit(I)V

    :goto_1a2
    return v2

    .line 50
    :cond_1a3
    iget-object v0, p0, Lcom/google/android/play/core/missingsplits/zzb;->zzd:Lcom/google/android/play/core/missingsplits/zza;

    .line 51
    invoke-virtual {v0}, Lcom/google/android/play/core/missingsplits/zza;->zzc()Z

    move-result v0

    if-eqz v0, :cond_1b5

    iget-object v0, p0, Lcom/google/android/play/core/missingsplits/zzb;->zzd:Lcom/google/android/play/core/missingsplits/zza;

    .line 52
    invoke-virtual {v0}, Lcom/google/android/play/core/missingsplits/zza;->zzb()V

    iget-object v0, p0, Lcom/google/android/play/core/missingsplits/zzb;->zzc:Ljava/lang/Runtime;

    .line 53
    invoke-virtual {v0, v3}, Ljava/lang/Runtime;->exit(I)V

    :cond_1b5
    return v3

    :catchall_1b6
    move-exception v1

    .line 54
    :try_start_1b7
    monitor-exit v0
    :try_end_1b8
    .catchall {:try_start_1b7 .. :try_end_1b8} :catchall_1b6

    throw v1
.end method

.method public final isMissingRequiredSplits()Z
    .registers 8

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/missingsplits/zzb;->zze:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/play/core/missingsplits/zzb;->zze:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    if-nez v1, :cond_9b

    iget-object v1, p0, Lcom/google/android/play/core/missingsplits/zzb;->zze:Ljava/util/concurrent/atomic/AtomicReference;

    .line 3
    iget-object v2, p0, Lcom/google/android/play/core/missingsplits/zzb;->zzb:Landroid/content/Context;

    .line 4
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_a9

    const/4 v3, 0x1

    const/4 v4, 0x0

    :try_start_17
    iget-object v5, p0, Lcom/google/android/play/core/missingsplits/zzb;->zzb:Landroid/content/Context;

    .line 5
    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x80

    invoke-virtual {v2, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    if-eqz v2, :cond_80

    .line 6
    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v2, :cond_80

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v6, "com.android.vending.splits.required"

    .line 7
    invoke-virtual {v2, v6}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_35
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_17 .. :try_end_35} :catch_82
    .catchall {:try_start_17 .. :try_end_35} :catchall_a9

    if-eqz v2, :cond_80

    .line 8
    :try_start_37
    iget-object v2, p0, Lcom/google/android/play/core/missingsplits/zzb;->zzb:Landroid/content/Context;

    .line 9
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v5, p0, Lcom/google/android/play/core/missingsplits/zzb;->zzb:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    new-instance v5, Ljava/util/HashSet;

    .line 10
    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    if-eqz v2, :cond_6b

    .line 11
    iget-object v2, v2, Landroid/content/pm/PackageInfo;->splitNames:[Ljava/lang/String;

    if-eqz v2, :cond_6b

    .line 12
    invoke-static {v5, v2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z
    :try_end_55
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_37 .. :try_end_55} :catch_56
    .catchall {:try_start_37 .. :try_end_55} :catchall_a9

    goto :goto_6b

    .line 13
    :catch_56
    :try_start_56
    sget-object v2, Lcom/google/android/play/core/missingsplits/zzb;->zza:Lcom/google/android/play/core/internal/zzag;

    new-array v5, v3, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/google/android/play/core/missingsplits/zzb;->zzb:Landroid/content/Context;

    .line 14
    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v4

    const-string v6, "App \'%s\' is not found in PackageManager"

    invoke-virtual {v2, v6, v5}, Lcom/google/android/play/core/internal/zzag;->zze(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 15
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v5

    .line 16
    :cond_6b
    :goto_6b
    invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_94

    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v2

    if-ne v2, v3, :cond_80

    const-string v2, ""

    invoke-interface {v5, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_80

    goto :goto_94

    :cond_80
    :goto_80
    const/4 v3, 0x0

    goto :goto_94

    .line 17
    :catch_82
    sget-object v2, Lcom/google/android/play/core/missingsplits/zzb;->zza:Lcom/google/android/play/core/internal/zzag;

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/android/play/core/missingsplits/zzb;->zzb:Landroid/content/Context;

    .line 18
    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const-string v5, "App \'%s\' is not found in the PackageManager"

    invoke-virtual {v2, v5, v3}, Lcom/google/android/play/core/internal/zzag;->zze(Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_80

    .line 19
    :cond_94
    :goto_94
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :cond_9b
    iget-object v1, p0, Lcom/google/android/play/core/missingsplits/zzb;->zze:Ljava/util/concurrent/atomic/AtomicReference;

    .line 20
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    monitor-exit v0

    return v1

    :catchall_a9
    move-exception v1

    .line 21
    monitor-exit v0
    :try_end_ab
    .catchall {:try_start_56 .. :try_end_ab} :catchall_a9

    throw v1
.end method
