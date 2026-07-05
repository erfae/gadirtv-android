.class public final Lcom/google/android/play/core/internal/zzbw;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.3"


# direct methods
.method public static zza(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)Lcom/google/android/play/core/internal/zzbu;
    .registers 4

    new-instance v0, Lcom/google/android/play/core/internal/zzbu;

    invoke-static {p0, p1}, Lcom/google/android/play/core/internal/zzbw;->zzh(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/play/core/internal/zzbu;-><init>(Ljava/lang/Object;Ljava/lang/reflect/Field;Ljava/lang/Class;)V

    return-object v0
.end method

.method public static zzb(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)Lcom/google/android/play/core/internal/zzbv;
    .registers 4

    new-instance v0, Lcom/google/android/play/core/internal/zzbv;

    invoke-static {p0, p1}, Lcom/google/android/play/core/internal/zzbw;->zzh(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/play/core/internal/zzbv;-><init>(Ljava/lang/Object;Ljava/lang/reflect/Field;Ljava/lang/Class;)V

    return-object v0
.end method

.method public static zzc(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_2
    new-array v2, v1, [Ljava/lang/Class;

    .line 1
    invoke-virtual {p0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 2
    invoke-virtual {v2}, Ljava/lang/reflect/AccessibleObject;->isAccessible()Z

    move-result v3

    if-nez v3, :cond_11

    .line 3
    invoke-virtual {v2, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    :cond_11
    new-array v3, v1, [Ljava/lang/Object;

    .line 4
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_17} :catch_18

    return-object p0

    :catch_18
    move-exception v2

    new-instance v3, Lcom/google/android/play/core/internal/zzbx;

    new-array v0, v0, [Ljava/lang/Object;

    .line 5
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v1

    const-string p0, "Failed to invoke default constructor on class %s"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v3, p0, v2}, Lcom/google/android/play/core/internal/zzbx;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public static zzd(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Class;

    const/4 v2, 0x0

    aput-object p3, v1, v2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-static {p3, p1, v1}, Lcom/google/android/play/core/internal/zzbw;->zzi(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p3

    :try_start_e
    new-array v1, v0, [Ljava/lang/Object;

    aput-object p4, v1, v2

    .line 2
    invoke-virtual {p3, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_1a} :catch_1b

    return-object p0

    :catch_1b
    move-exception p2

    new-instance p3, Lcom/google/android/play/core/internal/zzbx;

    const/4 p4, 0x2

    new-array p4, p4, [Ljava/lang/Object;

    aput-object p1, p4, v2

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    aput-object p0, p4, v0

    const-string p0, "Failed to invoke method %s on an object of type %s"

    .line 4
    invoke-static {p0, p4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p3, p0, p2}, Lcom/google/android/play/core/internal/zzbx;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p3
.end method

.method public static zze(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 12

    const/4 v0, 0x3

    new-array v1, v0, [Ljava/lang/Class;

    const/4 v2, 0x0

    aput-object p3, v1, v2

    const/4 p3, 0x1

    aput-object p5, v1, p3

    const/4 p5, 0x2

    aput-object p7, v1, p5

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p7

    invoke-static {p7, p1, v1}, Lcom/google/android/play/core/internal/zzbw;->zzi(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p7

    :try_start_14
    new-array v0, v0, [Ljava/lang/Object;

    aput-object p4, v0, v2

    aput-object p6, v0, p3

    aput-object p8, v0, p5

    .line 2
    invoke-virtual {p7, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_24} :catch_25

    return-object p0

    :catch_25
    move-exception p2

    new-instance p4, Lcom/google/android/play/core/internal/zzbx;

    new-array p5, p5, [Ljava/lang/Object;

    aput-object p1, p5, v2

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    aput-object p0, p5, p3

    const-string p0, "Failed to invoke method %s on an object of type %s"

    .line 4
    invoke-static {p0, p5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p4, p0, p2}, Lcom/google/android/play/core/internal/zzbx;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p4
.end method

.method public static zzf(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8

    const/4 p1, 0x1

    new-array v0, p1, [Ljava/lang/Class;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    const-string p3, "isDexOptNeeded"

    .line 1
    invoke-static {p0, p3, v0}, Lcom/google/android/play/core/internal/zzbw;->zzi(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    :try_start_c
    new-array v2, p1, [Ljava/lang/Object;

    aput-object p4, v2, v1

    const/4 p4, 0x0

    .line 2
    invoke-virtual {v0, p4, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_19} :catch_1a

    return-object p0

    :catch_1a
    move-exception p2

    new-instance p4, Lcom/google/android/play/core/internal/zzbx;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p3, v0, v1

    aput-object p0, v0, p1

    const-string p0, "Failed to invoke static method %s on type %s"

    .line 3
    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p4, p0, p2}, Lcom/google/android/play/core/internal/zzbx;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p4
.end method

.method public static zzg(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 10

    const/4 p1, 0x2

    new-array v0, p1, [Ljava/lang/Class;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    const/4 p3, 0x1

    aput-object p5, v0, p3

    const-string p5, "optimizedPathFor"

    .line 1
    invoke-static {p0, p5, v0}, Lcom/google/android/play/core/internal/zzbw;->zzi(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    :try_start_f
    new-array v2, p1, [Ljava/lang/Object;

    aput-object p4, v2, v1

    aput-object p6, v2, p3

    const/4 p4, 0x0

    .line 2
    invoke-virtual {v0, p4, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_1e} :catch_1f

    return-object p0

    :catch_1f
    move-exception p2

    new-instance p4, Lcom/google/android/play/core/internal/zzbx;

    new-array p1, p1, [Ljava/lang/Object;

    aput-object p5, p1, v1

    aput-object p0, p1, p3

    const-string p0, "Failed to invoke static method %s on type %s"

    .line 3
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p4, p0, p2}, Lcom/google/android/play/core/internal/zzbx;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p4
.end method

.method private static zzh(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .registers 6

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    :goto_4
    const/4 v1, 0x1

    if-eqz v0, :cond_1a

    .line 2
    :try_start_7
    invoke-virtual {v0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 3
    invoke-virtual {v2}, Ljava/lang/reflect/AccessibleObject;->isAccessible()Z

    move-result v3

    if-nez v3, :cond_14

    .line 4
    invoke-virtual {v2, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_14
    .catch Ljava/lang/NoSuchFieldException; {:try_start_7 .. :try_end_14} :catch_15

    :cond_14
    return-object v2

    .line 5
    :catch_15
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_4

    .line 6
    :cond_1a
    new-instance v0, Lcom/google/android/play/core/internal/zzbx;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v2, v1

    const-string p0, "Failed to find a field named %s on an object of instance %s"

    .line 8
    invoke-static {p0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/android/play/core/internal/zzbx;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static varargs zzi(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .registers 7

    move-object v0, p0

    :goto_1
    const/4 v1, 0x1

    if-eqz v0, :cond_17

    .line 1
    :try_start_4
    invoke-virtual {v0, p1, p2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 2
    invoke-virtual {v2}, Ljava/lang/reflect/AccessibleObject;->isAccessible()Z

    move-result v3

    if-nez v3, :cond_11

    .line 3
    invoke-virtual {v2, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_11
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_11} :catch_12

    :cond_11
    return-object v2

    .line 4
    :catch_12
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_1

    .line 5
    :cond_17
    new-instance v0, Lcom/google/android/play/core/internal/zzbx;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    .line 6
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    aput-object p1, v2, v1

    const/4 p1, 0x2

    aput-object p0, v2, p1

    const-string p0, "Could not find a method named %s with parameters %s in type %s"

    .line 7
    invoke-static {p0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/android/play/core/internal/zzbx;-><init>(Ljava/lang/String;)V

    throw v0
.end method
