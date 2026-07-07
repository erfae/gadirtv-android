.class Lcom/novoda/merlin/MerlinServiceDependencyMissingException;
.super Ljava/lang/IllegalStateException;
.source "MerlinServiceDependencyMissingException.java"


# static fields
.field private static final DEPENDENCY_ASSERT_FORMAT:Ljava/lang/String; = "%s must be bound to %s."


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method static missing(Ljava/lang/Class;)Lcom/novoda/merlin/MerlinServiceDependencyMissingException;
    .locals 3

    .line 10
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    const-class v2, Lcom/novoda/merlin/MerlinService;

    aput-object v2, v1, p0

    const-string p0, "%s must be bound to %s."

    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 16
    new-instance v0, Lcom/novoda/merlin/MerlinServiceDependencyMissingException;

    invoke-direct {v0, p0}, Lcom/novoda/merlin/MerlinServiceDependencyMissingException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
