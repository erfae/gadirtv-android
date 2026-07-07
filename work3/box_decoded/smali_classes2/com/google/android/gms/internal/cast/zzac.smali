.class public final Lcom/google/android/gms/internal/cast/zzac;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-cast-framework@@18.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/cast/zzq;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Landroid/content/Context;Lcom/google/android/gms/cast/CastDevice;Lcom/google/android/gms/cast/framework/CastOptions;Lcom/google/android/gms/cast/Cast$Listener;Lcom/google/android/gms/internal/cast/zzr;)Lcom/google/android/gms/internal/cast/zzo;
    .locals 8

    .line 2
    new-instance v7, Lcom/google/android/gms/internal/cast/zzt;

    sget-object v1, Lcom/google/android/gms/internal/cast/zzaf;->zzmz:Lcom/google/android/gms/internal/cast/zzab;

    move-object v0, v7

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/cast/zzt;-><init>(Lcom/google/android/gms/internal/cast/zzab;Landroid/content/Context;Lcom/google/android/gms/cast/CastDevice;Lcom/google/android/gms/cast/framework/CastOptions;Lcom/google/android/gms/cast/Cast$Listener;Lcom/google/android/gms/internal/cast/zzr;)V

    return-object v7
.end method
