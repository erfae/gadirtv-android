.class Lcom/novoda/merlin/MerlinMissingRegisterablesException;
.super Ljava/lang/IllegalStateException;
.source "MerlinMissingRegisterablesException.java"


# static fields
.field private static final REGISTERABLES_ASSERT_FORMAT:Ljava/lang/String; = "You must call Merlin.Builder.with%sCallbacks before registering a %s"


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method static missing(Ljava/lang/Class;)Lcom/novoda/merlin/MerlinMissingRegisterablesException;
    .locals 4

    .line 10
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 13
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 14
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x1

    aput-object p0, v1, v2

    const-string p0, "You must call Merlin.Builder.with%sCallbacks before registering a %s"

    .line 10
    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 16
    new-instance v0, Lcom/novoda/merlin/MerlinMissingRegisterablesException;

    invoke-direct {v0, p0}, Lcom/novoda/merlin/MerlinMissingRegisterablesException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
