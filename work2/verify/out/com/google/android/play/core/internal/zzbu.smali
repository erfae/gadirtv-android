.class public final Lcom/google/android/play/core/internal/zzbu;
.super Lcom/google/android/play/core/internal/zzbv;
.source "com.google.android.play:core@@1.10.3"


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/reflect/Field;Ljava/lang/Class;)V
    .registers 5

    const/4 v0, 0x0

    .line 1
    invoke-static {p3, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/play/core/internal/zzbv;-><init>(Ljava/lang/Object;Ljava/lang/reflect/Field;Ljava/lang/Class;)V

    return-void
.end method

.method private final zzf()Ljava/lang/Class;
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/play/core/internal/zzbv;->zzd()Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final zza(Ljava/util/Collection;)V
    .registers 7

    .line 1
    invoke-virtual {p0}, Lcom/google/android/play/core/internal/zzbv;->zzc()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    if-nez v0, :cond_b

    const/4 v2, 0x0

    goto :goto_c

    .line 2
    :cond_b
    array-length v2, v0

    .line 3
    :goto_c
    invoke-direct {p0}, Lcom/google/android/play/core/internal/zzbu;->zzf()Ljava/lang/Class;

    move-result-object v3

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v4

    add-int/2addr v4, v2

    invoke-static {v3, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    if-eqz v0, :cond_21

    array-length v4, v0

    .line 4
    invoke-static {v0, v1, v3, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5
    :cond_21
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_25
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_34

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 6
    aput-object v0, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_25

    .line 7
    :cond_34
    invoke-virtual {p0, v3}, Lcom/google/android/play/core/internal/zzbv;->zze(Ljava/lang/Object;)V

    return-void
.end method

.method public final zzb(Ljava/util/Collection;)V
    .registers 7

    .line 1
    invoke-virtual {p0}, Lcom/google/android/play/core/internal/zzbv;->zzc()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    if-nez v0, :cond_b

    const/4 v2, 0x0

    goto :goto_c

    .line 2
    :cond_b
    array-length v2, v0

    .line 3
    :goto_c
    invoke-direct {p0}, Lcom/google/android/play/core/internal/zzbu;->zzf()Ljava/lang/Class;

    move-result-object v3

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v4

    add-int/2addr v4, v2

    invoke-static {v3, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    if-eqz v0, :cond_25

    .line 4
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v3

    array-length v4, v0

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5
    :cond_25
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_29
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_38

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 6
    aput-object v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_29

    .line 7
    :cond_38
    invoke-virtual {p0, v2}, Lcom/google/android/play/core/internal/zzbv;->zze(Ljava/lang/Object;)V

    return-void
.end method
