.class final synthetic Lcom/google/android/gms/internal/ads/zzdmd;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzhgc:Lcom/google/android/gms/internal/ads/zzdma;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdma;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdmd;->zzhgc:Lcom/google/android/gms/internal/ads/zzdma;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdmd;->zzhgc:Lcom/google/android/gms/internal/ads/zzdma;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdma;->zzaug()V

    return-void
.end method
