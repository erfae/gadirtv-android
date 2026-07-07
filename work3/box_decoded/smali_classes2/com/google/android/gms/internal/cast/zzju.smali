.class public Lcom/google/android/gms/internal/cast/zzju;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-cast@@18.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/cast/zzmv;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType::",
        "Lcom/google/android/gms/internal/cast/zzml;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/cast/zzmv<",
        "TMessageType;>;"
    }
.end annotation


# static fields
.field private static final zzbiw:Lcom/google/android/gms/internal/cast/zzkq;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/cast/zzkq;->zzin()Lcom/google/android/gms/internal/cast/zzkq;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/cast/zzju;->zzbiw:Lcom/google/android/gms/internal/cast/zzkq;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
