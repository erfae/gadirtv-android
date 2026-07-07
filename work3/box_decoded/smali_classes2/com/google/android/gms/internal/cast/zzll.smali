.class public Lcom/google/android/gms/internal/cast/zzll;
.super Ljava/io/IOException;
.source "com.google.android.gms:play-services-cast@@18.1.0"


# instance fields
.field private zzbnv:Lcom/google/android/gms/internal/cast/zzml;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzll;->zzbnv:Lcom/google/android/gms/internal/cast/zzml;

    return-void
.end method

.method static zzjn()Lcom/google/android/gms/internal/cast/zzlo;
    .locals 2

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/cast/zzlo;

    const-string v1, "Protocol message tag had invalid wire type."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/cast/zzlo;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
