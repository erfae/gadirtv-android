.class final synthetic Lcom/google/android/gms/internal/ads/zzclw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzdko:Ljava/lang/Object;

.field private final zzgji:Ljava/lang/String;

.field private final zzglj:Lcom/google/android/gms/internal/ads/zzclp;

.field private final zzglm:Lcom/google/android/gms/internal/ads/zzazq;

.field private final zzgln:J


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzclp;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzazq;Ljava/lang/String;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzclw;->zzglj:Lcom/google/android/gms/internal/ads/zzclp;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzclw;->zzdko:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzclw;->zzglm:Lcom/google/android/gms/internal/ads/zzazq;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzclw;->zzgji:Ljava/lang/String;

    iput-wide p5, p0, Lcom/google/android/gms/internal/ads/zzclw;->zzgln:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzclw;->zzglj:Lcom/google/android/gms/internal/ads/zzclp;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzclw;->zzdko:Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzclw;->zzglm:Lcom/google/android/gms/internal/ads/zzazq;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzclw;->zzgji:Ljava/lang/String;

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzclw;->zzgln:J

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzclp;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzazq;Ljava/lang/String;J)V

    return-void
.end method
