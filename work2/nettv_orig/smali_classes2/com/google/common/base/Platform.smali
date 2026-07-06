.class final Lcom/google/common/base/Platform;
.super Ljava/lang/Object;
.source "Platform.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
    emulated = true
.end annotation

.annotation runtime Lcom/google/common/base/ElementTypesAreNonnullByDefault;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/base/Platform$JdkPatternCompiler;
    }
.end annotation


# static fields
.field public static final synthetic $r8$clinit:I

.field private static final logger:Ljava/util/logging/Logger;

.field private static final patternCompiler:Lcom/google/common/base/PatternCompiler;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/google/common/base/Platform;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/common/base/Platform;->logger:Ljava/util/logging/Logger;

    .line 2
    invoke-static {}, Lcom/google/common/base/Platform;->loadPatternCompiler()Lcom/google/common/base/PatternCompiler;

    move-result-object v0

    sput-object v0, Lcom/google/common/base/Platform;->patternCompiler:Lcom/google/common/base/PatternCompiler;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compilePattern(Ljava/lang/String;)Lcom/google/common/base/CommonPattern;
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    sget-object v0, Lcom/google/common/base/Platform;->patternCompiler:Lcom/google/common/base/PatternCompiler;

    invoke-interface {v0, p0}, Lcom/google/common/base/PatternCompiler;->compile(Ljava/lang/String;)Lcom/google/common/base/CommonPattern;

    move-result-object p0

    return-object p0
.end method

.method private static loadPatternCompiler()Lcom/google/common/base/PatternCompiler;
    .locals 2

    new-instance v0, Lcom/google/common/base/Platform$JdkPatternCompiler;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/common/base/Platform$JdkPatternCompiler;-><init>(Lcom/google/common/base/Platform$1;)V

    return-object v0
.end method

.method private static logPatternCompilerError(Ljava/util/ServiceConfigurationError;)V
    .locals 3

    sget-object v0, Lcom/google/common/base/Platform;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v2, "Error loading regex compiler, falling back to next option"

    invoke-virtual {v0, v1, v2, p0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static patternCompilerIsPcreLike()Z
    .locals 1

    sget-object v0, Lcom/google/common/base/Platform;->patternCompiler:Lcom/google/common/base/PatternCompiler;

    invoke-interface {v0}, Lcom/google/common/base/PatternCompiler;->isPcreLike()Z

    move-result v0

    return v0
.end method
