.class final synthetic Lcom/google/android/gms/internal/ads/zzahy;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final zzckm:Landroid/content/Context;

.field private final zzdgs:Lcom/google/android/gms/internal/ads/zzahz;

.field private final zzdgt:Ljava/lang/String;

.field private final zzdgu:Lcom/google/android/gms/ads/internal/util/zzbf;

.field private final zzdgv:Ljava/lang/String;

.field private final zzdgw:Landroid/content/res/Resources;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzahz;Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/ads/internal/util/zzbf;Ljava/lang/String;Landroid/content/res/Resources;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzahy;->zzdgs:Lcom/google/android/gms/internal/ads/zzahz;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzahy;->zzckm:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzahy;->zzdgt:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzahy;->zzdgu:Lcom/google/android/gms/ads/internal/util/zzbf;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzahy;->zzdgv:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzahy;->zzdgw:Landroid/content/res/Resources;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 8

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzahy;->zzdgs:Lcom/google/android/gms/internal/ads/zzahz;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzahy;->zzckm:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzahy;->zzdgt:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzahy;->zzdgu:Lcom/google/android/gms/ads/internal/util/zzbf;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzahy;->zzdgv:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzahy;->zzdgw:Landroid/content/res/Resources;

    move-object v6, p1

    move v7, p2

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/zzahz;->zza(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/ads/internal/util/zzbf;Ljava/lang/String;Landroid/content/res/Resources;Landroid/content/DialogInterface;I)V

    return-void
.end method
