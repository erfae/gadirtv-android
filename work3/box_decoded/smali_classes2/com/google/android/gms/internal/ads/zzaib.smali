.class final synthetic Lcom/google/android/gms/internal/ads/zzaib;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final zzdgs:Lcom/google/android/gms/internal/ads/zzahz;

.field private final zzdha:Ljava/lang/String;

.field private final zzdhb:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzahz;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaib;->zzdgs:Lcom/google/android/gms/internal/ads/zzahz;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzaib;->zzdha:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzaib;->zzdhb:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaib;->zzdgs:Lcom/google/android/gms/internal/ads/zzahz;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaib;->zzdha:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzaib;->zzdhb:Landroid/content/Context;

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/google/android/gms/internal/ads/zzahz;->zza(Ljava/lang/String;Landroid/content/Context;Landroid/content/DialogInterface;I)V

    return-void
.end method
