.class Lcom/google/android/material/datepicker/TimeSource;
.super Ljava/lang/Object;
.source "TimeSource.java"


# static fields
.field private static final SYSTEM_TIME_SOURCE:Lcom/google/android/material/datepicker/TimeSource;


# instance fields
.field private final fixedTimeMs:Ljava/lang/Long;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final fixedTimeZone:Ljava/util/TimeZone;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/material/datepicker/TimeSource;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lcom/google/android/material/datepicker/TimeSource;-><init>(Ljava/lang/Long;Ljava/util/TimeZone;)V

    sput-object v0, Lcom/google/android/material/datepicker/TimeSource;->SYSTEM_TIME_SOURCE:Lcom/google/android/material/datepicker/TimeSource;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Long;Ljava/util/TimeZone;)V
    .locals 0
    .param p1    # Ljava/lang/Long;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/util/TimeZone;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/material/datepicker/TimeSource;->fixedTimeMs:Ljava/lang/Long;

    .line 3
    iput-object p2, p0, Lcom/google/android/material/datepicker/TimeSource;->fixedTimeZone:Ljava/util/TimeZone;

    return-void
.end method

.method public static system()Lcom/google/android/material/datepicker/TimeSource;
    .locals 1

    sget-object v0, Lcom/google/android/material/datepicker/TimeSource;->SYSTEM_TIME_SOURCE:Lcom/google/android/material/datepicker/TimeSource;

    return-object v0
.end method


# virtual methods
.method public final now()Ljava/util/Calendar;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/datepicker/TimeSource;->fixedTimeZone:Ljava/util/TimeZone;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 3
    :goto_0
    iget-object v1, p0, Lcom/google/android/material/datepicker/TimeSource;->fixedTimeMs:Ljava/lang/Long;

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    :cond_1
    return-object v0
.end method
