.class final synthetic Lcom/google/android/gms/internal/cast/zzaf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-cast-framework@@18.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/cast/zzab;


# static fields
.field static final zzmz:Lcom/google/android/gms/internal/cast/zzab;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/cast/zzaf;

    invoke-direct {v0}, Lcom/google/android/gms/internal/cast/zzaf;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/cast/zzaf;->zzmz:Lcom/google/android/gms/internal/cast/zzab;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Landroid/content/Context;Lcom/google/android/gms/cast/Cast$CastOptions;Lcom/google/android/gms/cast/zzp;)Lcom/google/android/gms/cast/zzn;
    .locals 0

    .line 3
    invoke-static {p1, p2}, Lcom/google/android/gms/cast/Cast;->zza(Landroid/content/Context;Lcom/google/android/gms/cast/Cast$CastOptions;)Lcom/google/android/gms/cast/zzn;

    move-result-object p1

    .line 4
    invoke-interface {p1, p3}, Lcom/google/android/gms/cast/zzn;->zza(Lcom/google/android/gms/cast/zzp;)V

    return-object p1
.end method
